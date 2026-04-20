# Spinrise Backend — Purchase Requisition Module Migration Guide

**Source:** VB6 `tmpPOINDENT.frm` (Kalsofte ERP — 9,108 lines)
**Target:** ASP.NET Core 8 + Dapper + SQL Server
**Pattern Reference:** `User` module (see `PROJECT_GUIDE.md`)
**Prepared for:** AI Code Agent

---

## Agent Instructions

Read this document fully before writing any code.
Follow the Spinrise `PROJECT_GUIDE.md` conventions exactly.
The `User` module is the canonical pattern. Mirror it for every layer.
Do not deviate from the layered architecture, stored procedure strategy, or API response format.

---

## 1. Module Overview

| Attribute | Value |
|---|---|
| Module Name | `PurchaseRequisition` |
| Short Name | `PR` |
| Primary Table | `po_prh` (PR Header) |
| Detail Table | `po_prl` (PR Line Items) |
| Entity Class Name | `PurchaseRequisitionHeader`, `PurchaseRequisitionLine` |
| DTO Folder | `Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/` |
| Controller | `Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs` |
| Service | `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs` |
| Repository | `Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionRepository.cs` |

---

## 2. Files to Create — Complete List

The agent must create every file in this list. No file is optional.

### 2.1 Domain

```
Spinrise.Domain/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionHeader.cs
Spinrise.Domain/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionLine.cs
```

### 2.2 Application — Interfaces

```
Spinrise.Application/Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionRepository.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/Interfaces/IPurchaseRequisitionService.cs
```

### 2.3 Application — DTOs

```
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRHeaderDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/CreatePRLineDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/UpdatePRHeaderDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/UpdatePRLineDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRHeaderResponseDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRLineResponseDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/DTOs/PRSummaryResponseDto.cs
Spinrise.Application/Areas/Purchase/PurchaseRequisition/Mappings/PRMappings.cs
```

### 2.4 Application — Service

```
Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs
```

### 2.5 Infrastructure — Repository

```
Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionRepository.cs
```

### 2.6 API — Controller

```
Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs
```

### 2.7 Database Scripts

```
Spinrise.DBScripts/01 Tables/01_po_prh.sql
Spinrise.DBScripts/01 Tables/02_po_prl.sql
Spinrise.DBScripts/01 Tables/03_feature_flags.sql
Spinrise.DBScripts/02 Stored Procedures/01_usp_PR_GetAll.sql
Spinrise.DBScripts/02 Stored Procedures/02_usp_PR_GetById.sql
Spinrise.DBScripts/02 Stored Procedures/03_usp_PR_Insert.sql
Spinrise.DBScripts/02 Stored Procedures/04_usp_PR_Update.sql
Spinrise.DBScripts/02 Stored Procedures/05_usp_PR_Delete.sql
Spinrise.DBScripts/02 Stored Procedures/06_usp_PR_DeleteLine.sql
Spinrise.DBScripts/02 Stored Procedures/07_usp_PR_PreChecks.sql
Spinrise.DBScripts/02 Stored Procedures/08_usp_PR_GenerateNumber.sql
Spinrise.DBScripts/03 Seed Data/01_feature_flags_seed.sql
```

---

## 3. Database Tables

### 3.1 `po_prh` — PR Header Table

```sql
CREATE TABLE dbo.po_prh (
    Id           INT            IDENTITY(1,1) PRIMARY KEY,
    DivCode      VARCHAR(10)    NOT NULL,
    PrNo         VARCHAR(20)    NOT NULL,
    PrDate       DATE           NOT NULL,
    DepCode      VARCHAR(10)    NOT NULL,
    DepName      VARCHAR(100)   NULL,
    Section      VARCHAR(100)   NULL,
    SubCostCode  VARCHAR(20)    NULL,
    IType        VARCHAR(20)    NULL,
    ReqName      VARCHAR(100)   NULL,
    RefNo        VARCHAR(50)    NULL,
    SaleOrderNo  VARCHAR(50)    NULL,
    SaleOrderDate DATE          NULL,
    PrStatus     VARCHAR(20)    NOT NULL DEFAULT 'DRAFT',
    CreatedBy    VARCHAR(50)    NOT NULL,
    CreatedAt    DATETIME       NOT NULL DEFAULT GETDATE(),
    ModifiedBy   VARCHAR(50)    NULL,
    ModifiedAt   DATETIME       NULL,
    IsDeleted    BIT            NOT NULL DEFAULT 0,
    CONSTRAINT UQ_po_prh_PrNo UNIQUE (DivCode, PrNo)
);
```

**Field Source Notes (from VB6 analysis):**

| Column | Maps From | Notes |
|---|---|---|
| DivCode | Session/Login context | Division code from logged-in user |
| PrNo | `po_doc_para` sequence | Auto-generated — do not accept from client |
| PrDate | `MaskEdBox1(0)` | Must equal processing date |
| DepCode | `txtfields(5)` | Lookup from `in_dep` |
| SubCostCode | `txtfields(4)` | Required when `feature_flags.budget_validation_enabled = 1` |
| IType | `Combo2` | Loaded from `po_doc_para` |
| ReqName | `Text4` | Auto-filled from employee lookup |
| RefNo | `txtfields(8)` | Conditional mandatory |
| SaleOrderNo | `Text12` | Only when `feature_flags.sale_order_linkage_enabled = 1` |
| SaleOrderDate | `MaskEdBox3` | Only when `feature_flags.sale_order_linkage_enabled = 1` |
| PrStatus | New column | DRAFT / SUBMITTED / APPROVED / CONVERTED / CLOSED |
| CreatedBy | `PP_Passwd` (logged-in user) | Set in service layer |

---

### 3.2 `po_prl` — PR Line Items Table

```sql
CREATE TABLE dbo.po_prl (
    Id            INT           IDENTITY(1,1) PRIMARY KEY,
    DivCode       VARCHAR(10)   NOT NULL,
    PrNo          VARCHAR(20)   NOT NULL,
    PrSNo         INT           NOT NULL,
    ItemCode      VARCHAR(30)   NOT NULL,
    ItemName      VARCHAR(200)  NULL,
    Uom           VARCHAR(20)   NULL,
    Rate          DECIMAL(18,4) NULL,
    CurrentStock  DECIMAL(18,4) NULL,
    QtyRequired   DECIMAL(18,4) NOT NULL,
    RequiredDate  DATE          NULL,
    Place         VARCHAR(100)  NULL,
    ApproxCost    DECIMAL(18,2) NULL,
    Remarks       VARCHAR(500)  NULL,
    MachineNo     VARCHAR(30)   NULL,
    CostCentreCode VARCHAR(20)  NULL,
    BudgetGroupCode VARCHAR(20) NULL,
    LastPoRate    DECIMAL(18,4) NULL,
    LastPoDate    DATE          NULL,
    LastPoSupplierCode VARCHAR(20) NULL,
    LastPoSupplierName VARCHAR(100) NULL,
    IsSample      BIT           NOT NULL DEFAULT 0,
    DirectApp     VARCHAR(1)    NULL DEFAULT 'N',
    IsDeleted     BIT           NOT NULL DEFAULT 0,
    CONSTRAINT UQ_po_prl_Line UNIQUE (DivCode, PrNo, PrSNo),
    CONSTRAINT FK_po_prl_Header FOREIGN KEY (DivCode, PrNo)
        REFERENCES dbo.po_prh (DivCode, PrNo)
);
```

**Field Source Notes (from VB6 analysis):**

| Column | Maps From | Notes |
|---|---|---|
| PrSNo | Sequence counter | Line serial number — generated in service |
| ItemCode | `ItemCodeTextBox` | Validated against `in_item` |
| QtyRequired | `QtyReqTextBox` | Must be > 0 |
| RequiredDate | `MaskEdBox2` | On Add: >= today; On Modify: >= PrDate |
| CostCentreCode | Grid Col 11 | Validated against `in_cc` |
| BudgetGroupCode | Grid Col 12 | Validated against `in_bgrp` |
| MachineNo | Grid Col 13 | Validated against `mm_macmas` |
| LastPoRate | Grid Col 19 | Auto-filled from `po_ordh/po_ordl` |
| DirectApp | `po_prl.DirectApp` | Approval flag — preserved from VB6 |
| IsSample | `ChkSample` | Y/N checkbox |

---

### 3.3 `feature_flags` — Replaces All VB6 CustID Hardcodes

```sql
CREATE TABLE dbo.feature_flags (
    Id           INT          IDENTITY(1,1) PRIMARY KEY,
    DivCode      VARCHAR(10)  NOT NULL,
    FeatureKey   VARCHAR(100) NOT NULL,
    IsEnabled    BIT          NOT NULL DEFAULT 0,
    CONSTRAINT UQ_feature_flags UNIQUE (DivCode, FeatureKey)
);
```

**Seed Data — Insert in `03_feature_flags_seed.sql`:**

```sql
-- Add one row per division per feature as needed.
-- These replace ALL hardcoded CustID checks from the VB6 form.
-- FeatureKey constants match the ones used in the service layer.

INSERT INTO dbo.feature_flags (DivCode, FeatureKey, IsEnabled) VALUES
('DEFAULT', 'budget_validation_enabled',       0),
('DEFAULT', 'sale_order_linkage_enabled',      0),
('DEFAULT', 'multi_division_stock_popup',      0),
('DEFAULT', 'pending_po_check_enabled',        0),
('DEFAULT', 'pending_indent_check_enabled',    0),
('DEFAULT', 'approval_required_before_print',  0),
('DEFAULT', 'rate_column_visible',             1),
('DEFAULT', 'backdate_allowed',                1);
```

---

## 4. Stored Procedures

Follow naming convention: `usp_PR_<Action>`

---

### 4.1 `usp_PR_PreChecks`

Called before allowing Add mode. Replicates VB6 Button 0 pre-validations V1–V3.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_PreChecks
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ItemExists   BIT = 0,
            @DeptExists   BIT = 0,
            @DocExists    BIT = 0;

    IF EXISTS (SELECT 1 FROM dbo.in_item WHERE DivCode = @DivCode AND IsActive = 1)
        SET @ItemExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode)
        SET @DeptExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.po_doc_para WHERE DivCode = @DivCode AND TC = 'PURCHASE REQUISITION')
        SET @DocExists = 1;

    SELECT
        @ItemExists  AS ItemMasterExists,
        @DeptExists  AS DepartmentExists,
        @DocExists   AS DocNumberConfigured;
END;
```

---

### 4.2 `usp_PR_GenerateNumber`

Generates next PR number within the financial year. Replicates VB6 `po_doc_para` sequence logic.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_GenerateNumber
    @DivCode    VARCHAR(10),
    @FinYear    VARCHAR(9)     -- e.g. '2024-25'
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo INT;

    SELECT @NextNo = ISNULL(MAX(CAST(RIGHT(PrNo, 5) AS INT)), 0) + 1
    FROM dbo.po_prh
    WHERE DivCode = @DivCode
      AND PrNo LIKE '%' + @FinYear + '%'
      AND IsDeleted = 0;

    -- Returns the next number as INT; the service layer formats it.
    SELECT @NextNo AS NextNumber;
END;
```

---

### 4.3 `usp_PR_GetAll`

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_GetAll
    @DivCode   VARCHAR(10),
    @PrNo      VARCHAR(20)  = NULL,
    @FromDate  DATE         = NULL,
    @ToDate    DATE         = NULL,
    @DepCode   VARCHAR(10)  = NULL,
    @Status    VARCHAR(20)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        COUNT(l.Id) AS LineCount
    FROM dbo.po_prh h
    LEFT JOIN dbo.po_prl l ON l.DivCode = h.DivCode AND l.PrNo = h.PrNo AND l.IsDeleted = 0
    WHERE h.DivCode = @DivCode
      AND h.IsDeleted = 0
      AND (@PrNo     IS NULL OR h.PrNo     = @PrNo)
      AND (@FromDate IS NULL OR h.PrDate  >= @FromDate)
      AND (@ToDate   IS NULL OR h.PrDate  <= @ToDate)
      AND (@DepCode  IS NULL OR h.DepCode  = @DepCode)
      AND (@Status   IS NULL OR h.PrStatus = @Status)
    GROUP BY
        h.Id, h.DivCode, h.PrNo, h.PrDate, h.DepCode, h.DepName,
        h.Section, h.SubCostCode, h.IType, h.ReqName, h.RefNo,
        h.PrStatus, h.CreatedBy, h.CreatedAt
    ORDER BY h.PrDate DESC, h.PrNo DESC;
END;
```

---

### 4.4 `usp_PR_GetById`

Returns header + all active lines.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_GetById
    @DivCode VARCHAR(10),
    @PrNo    VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Header
    SELECT
        h.Id, h.DivCode, h.PrNo, h.PrDate, h.DepCode, h.DepName,
        h.Section, h.SubCostCode, h.IType, h.ReqName, h.RefNo,
        h.SaleOrderNo, h.SaleOrderDate, h.PrStatus,
        h.CreatedBy, h.CreatedAt, h.ModifiedBy, h.ModifiedAt
    FROM dbo.po_prh h
    WHERE h.DivCode = @DivCode AND h.PrNo = @PrNo AND h.IsDeleted = 0;

    -- Lines
    SELECT
        l.Id, l.DivCode, l.PrNo, l.PrSNo,
        l.ItemCode, l.ItemName, l.Uom, l.Rate, l.CurrentStock,
        l.QtyRequired, l.RequiredDate, l.Place, l.ApproxCost, l.Remarks,
        l.MachineNo, l.CostCentreCode, l.BudgetGroupCode,
        l.LastPoRate, l.LastPoDate, l.LastPoSupplierCode, l.LastPoSupplierName,
        l.IsSample, l.DirectApp
    FROM dbo.po_prl l
    WHERE l.DivCode = @DivCode AND l.PrNo = @PrNo AND l.IsDeleted = 0
    ORDER BY l.PrSNo;
END;
```

---

### 4.5 `usp_PR_Insert`

Inserts header and all line items in a single call. Transaction is managed in the service layer.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_Insert
    -- Header fields
    @DivCode      VARCHAR(10),
    @PrNo         VARCHAR(20),
    @PrDate       DATE,
    @DepCode      VARCHAR(10),
    @DepName      VARCHAR(100),
    @Section      VARCHAR(100),
    @SubCostCode  VARCHAR(20),
    @IType        VARCHAR(20),
    @ReqName      VARCHAR(100),
    @RefNo        VARCHAR(50),
    @SaleOrderNo  VARCHAR(50),
    @SaleOrderDate DATE,
    @PrStatus     VARCHAR(20),
    @CreatedBy    VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prh (
        DivCode, PrNo, PrDate, DepCode, DepName, Section,
        SubCostCode, IType, ReqName, RefNo,
        SaleOrderNo, SaleOrderDate, PrStatus, CreatedBy
    )
    VALUES (
        @DivCode, @PrNo, @PrDate, @DepCode, @DepName, @Section,
        @SubCostCode, @IType, @ReqName, @RefNo,
        @SaleOrderNo, @SaleOrderDate, @PrStatus, @CreatedBy
    );

    SELECT SCOPE_IDENTITY() AS NewId;
END;
```

**Agent Note:** Lines are inserted via a separate `usp_PR_InsertLine` loop in the repository — one call per line row, inside the same transaction.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_InsertLine
    @DivCode           VARCHAR(10),
    @PrNo              VARCHAR(20),
    @PrSNo             INT,
    @ItemCode          VARCHAR(30),
    @ItemName          VARCHAR(200),
    @Uom               VARCHAR(20),
    @Rate              DECIMAL(18,4),
    @CurrentStock      DECIMAL(18,4),
    @QtyRequired       DECIMAL(18,4),
    @RequiredDate      DATE,
    @Place             VARCHAR(100),
    @ApproxCost        DECIMAL(18,2),
    @Remarks           VARCHAR(500),
    @MachineNo         VARCHAR(30),
    @CostCentreCode    VARCHAR(20),
    @BudgetGroupCode   VARCHAR(20),
    @LastPoRate        DECIMAL(18,4),
    @LastPoDate        DATE,
    @LastPoSupplierCode VARCHAR(20),
    @LastPoSupplierName VARCHAR(100),
    @IsSample          BIT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prl (
        DivCode, PrNo, PrSNo, ItemCode, ItemName, Uom,
        Rate, CurrentStock, QtyRequired, RequiredDate,
        Place, ApproxCost, Remarks, MachineNo,
        CostCentreCode, BudgetGroupCode,
        LastPoRate, LastPoDate, LastPoSupplierCode, LastPoSupplierName,
        IsSample
    )
    VALUES (
        @DivCode, @PrNo, @PrSNo, @ItemCode, @ItemName, @Uom,
        @Rate, @CurrentStock, @QtyRequired, @RequiredDate,
        @Place, @ApproxCost, @Remarks, @MachineNo,
        @CostCentreCode, @BudgetGroupCode,
        @LastPoRate, @LastPoDate, @LastPoSupplierCode, @LastPoSupplierName,
        @IsSample
    );

    SELECT SCOPE_IDENTITY() AS NewId;
END;
```

---

### 4.6 `usp_PR_Update`

Updates header fields only. Lines are deleted and re-inserted in the service layer (replace strategy).

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_Update
    @DivCode      VARCHAR(10),
    @PrNo         VARCHAR(20),
    @DepCode      VARCHAR(10),
    @DepName      VARCHAR(100),
    @Section      VARCHAR(100),
    @SubCostCode  VARCHAR(20),
    @IType        VARCHAR(20),
    @ReqName      VARCHAR(100),
    @RefNo        VARCHAR(50),
    @SaleOrderNo  VARCHAR(50),
    @SaleOrderDate DATE,
    @ModifiedBy   VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prh SET
        DepCode       = @DepCode,
        DepName       = @DepName,
        Section       = @Section,
        SubCostCode   = @SubCostCode,
        IType         = @IType,
        ReqName       = @ReqName,
        RefNo         = @RefNo,
        SaleOrderNo   = @SaleOrderNo,
        SaleOrderDate = @SaleOrderDate,
        ModifiedBy    = @ModifiedBy,
        ModifiedAt    = GETDATE()
    WHERE DivCode = @DivCode AND PrNo = @PrNo AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
```

---

### 4.7 `usp_PR_Delete`

Soft delete header and all lines.

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_Delete
    @DivCode VARCHAR(10),
    @PrNo    VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl SET IsDeleted = 1
    WHERE DivCode = @DivCode AND PrNo = @PrNo;

    UPDATE dbo.po_prh SET IsDeleted = 1
    WHERE DivCode = @DivCode AND PrNo = @PrNo;

    SELECT @@ROWCOUNT;
END;
```

---

### 4.8 `usp_PR_DeleteLine`

Soft delete a single line item. Replicates VB6 Button 12 (Line Delete).

```sql
CREATE OR ALTER PROCEDURE dbo.usp_PR_DeleteLine
    @DivCode VARCHAR(10),
    @PrNo    VARCHAR(20),
    @PrSNo   INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl SET IsDeleted = 1
    WHERE DivCode = @DivCode AND PrNo = @PrNo AND PrSNo = @PrSNo;

    SELECT @@ROWCOUNT;
END;
```

---

## 5. Domain Entities

### `PurchaseRequisitionHeader.cs`

```csharp
namespace Spinrise.Domain.Entities;

public class PurchaseRequisitionHeader
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public string PrNo { get; set; } = string.Empty;
    public DateTime PrDate { get; set; }
    public string DepCode { get; set; } = string.Empty;
    public string? DepName { get; set; }
    public string? Section { get; set; }
    public string? SubCostCode { get; set; }
    public string? IType { get; set; }
    public string? ReqName { get; set; }
    public string? RefNo { get; set; }
    public string? SaleOrderNo { get; set; }
    public DateTime? SaleOrderDate { get; set; }
    public string PrStatus { get; set; } = "DRAFT";
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public List<PurchaseRequisitionLine> Lines { get; set; } = new();
}
```

### `PurchaseRequisitionLine.cs`

```csharp
namespace Spinrise.Domain.Entities;

public class PurchaseRequisitionLine
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public string PrNo { get; set; } = string.Empty;
    public int PrSNo { get; set; }
    public string ItemCode { get; set; } = string.Empty;
    public string? ItemName { get; set; }
    public string? Uom { get; set; }
    public decimal? Rate { get; set; }
    public decimal? CurrentStock { get; set; }
    public decimal QtyRequired { get; set; }
    public DateTime? RequiredDate { get; set; }
    public string? Place { get; set; }
    public decimal? ApproxCost { get; set; }
    public string? Remarks { get; set; }
    public string? MachineNo { get; set; }
    public string? CostCentreCode { get; set; }
    public string? BudgetGroupCode { get; set; }
    public decimal? LastPoRate { get; set; }
    public DateTime? LastPoDate { get; set; }
    public string? LastPoSupplierCode { get; set; }
    public string? LastPoSupplierName { get; set; }
    public bool IsSample { get; set; }
    public string? DirectApp { get; set; }
}
```

---

## 6. DTOs

### `CreatePRLineDto.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class CreatePRLineDto
{
    [Required]
    [StringLength(30)]
    public string ItemCode { get; set; } = string.Empty;

    [Range(0.0001, double.MaxValue, ErrorMessage = "Quantity Required must be greater than 0.")]
    public decimal QtyRequired { get; set; }

    public DateTime? RequiredDate { get; set; }

    [StringLength(100)]
    public string? Place { get; set; }

    [Range(0, double.MaxValue)]
    public decimal? ApproxCost { get; set; }

    [StringLength(500)]
    public string? Remarks { get; set; }

    [StringLength(30)]
    public string? MachineNo { get; set; }

    [StringLength(20)]
    public string? CostCentreCode { get; set; }

    [StringLength(20)]
    public string? BudgetGroupCode { get; set; }

    public bool IsSample { get; set; }
}
```

### `CreatePRHeaderDto.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class CreatePRHeaderDto
{
    [Required]
    [StringLength(10)]
    public string DivCode { get; set; } = string.Empty;

    [Required]
    public DateTime PrDate { get; set; }

    [Required]
    [StringLength(10)]
    public string DepCode { get; set; } = string.Empty;

    [StringLength(100)]
    public string? Section { get; set; }

    [StringLength(20)]
    public string? SubCostCode { get; set; }

    [StringLength(20)]
    public string? IType { get; set; }

    [StringLength(100)]
    public string? ReqName { get; set; }

    [StringLength(50)]
    public string? RefNo { get; set; }

    [StringLength(50)]
    public string? SaleOrderNo { get; set; }

    public DateTime? SaleOrderDate { get; set; }

    [Required]
    [MinLength(1, ErrorMessage = "At least one line item is required.")]
    public List<CreatePRLineDto> Lines { get; set; } = new();
}
```

### `UpdatePRLineDto.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class UpdatePRLineDto : CreatePRLineDto
{
    // Inherits all fields from CreatePRLineDto.
    // PrSNo is not required from client — service re-sequences lines on update.
}
```

### `UpdatePRHeaderDto.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class UpdatePRHeaderDto
{
    [Required]
    [StringLength(10)]
    public string DivCode { get; set; } = string.Empty;

    [Required]
    [StringLength(20)]
    public string PrNo { get; set; } = string.Empty;

    [Required]
    [StringLength(10)]
    public string DepCode { get; set; } = string.Empty;

    [StringLength(100)]
    public string? Section { get; set; }

    [StringLength(20)]
    public string? SubCostCode { get; set; }

    [StringLength(20)]
    public string? IType { get; set; }

    [StringLength(100)]
    public string? ReqName { get; set; }

    [StringLength(50)]
    public string? RefNo { get; set; }

    [StringLength(50)]
    public string? SaleOrderNo { get; set; }

    public DateTime? SaleOrderDate { get; set; }

    [Required]
    [MinLength(1, ErrorMessage = "At least one line item is required.")]
    public List<UpdatePRLineDto> Lines { get; set; } = new();
}
```

### `PRHeaderResponseDto.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRHeaderResponseDto
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public string PrNo { get; set; } = string.Empty;
    public DateTime PrDate { get; set; }
    public string DepCode { get; set; } = string.Empty;
    public string? DepName { get; set; }
    public string? Section { get; set; }
    public string? SubCostCode { get; set; }
    public string? IType { get; set; }
    public string? ReqName { get; set; }
    public string? RefNo { get; set; }
    public string? SaleOrderNo { get; set; }
    public DateTime? SaleOrderDate { get; set; }
    public string PrStatus { get; set; } = string.Empty;
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public List<PRLineResponseDto> Lines { get; set; } = new();
}
```

### `PRLineResponseDto.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRLineResponseDto
{
    public int Id { get; set; }
    public int PrSNo { get; set; }
    public string ItemCode { get; set; } = string.Empty;
    public string? ItemName { get; set; }
    public string? Uom { get; set; }
    public decimal? Rate { get; set; }
    public decimal? CurrentStock { get; set; }
    public decimal QtyRequired { get; set; }
    public DateTime? RequiredDate { get; set; }
    public string? Place { get; set; }
    public decimal? ApproxCost { get; set; }
    public string? Remarks { get; set; }
    public string? MachineNo { get; set; }
    public string? CostCentreCode { get; set; }
    public string? BudgetGroupCode { get; set; }
    public decimal? LastPoRate { get; set; }
    public DateTime? LastPoDate { get; set; }
    public string? LastPoSupplierCode { get; set; }
    public string? LastPoSupplierName { get; set; }
    public bool IsSample { get; set; }
}
```

### `PRSummaryResponseDto.cs`

Used by `GetAll` / search results — no line items included.

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public class PRSummaryResponseDto
{
    public int Id { get; set; }
    public string DivCode { get; set; } = string.Empty;
    public string PrNo { get; set; } = string.Empty;
    public DateTime PrDate { get; set; }
    public string DepCode { get; set; } = string.Empty;
    public string? DepName { get; set; }
    public string? ReqName { get; set; }
    public string PrStatus { get; set; } = string.Empty;
    public string CreatedBy { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public int LineCount { get; set; }
}
```

### `PRMappings.cs`

```csharp
namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public static class PRMappings
{
    public static PRHeaderResponseDto ToResponseDto(this PurchaseRequisitionHeader entity)
    {
        return new PRHeaderResponseDto
        {
            Id            = entity.Id,
            DivCode       = entity.DivCode,
            PrNo          = entity.PrNo,
            PrDate        = entity.PrDate,
            DepCode       = entity.DepCode,
            DepName       = entity.DepName,
            Section       = entity.Section,
            SubCostCode   = entity.SubCostCode,
            IType         = entity.IType,
            ReqName       = entity.ReqName,
            RefNo         = entity.RefNo,
            SaleOrderNo   = entity.SaleOrderNo,
            SaleOrderDate = entity.SaleOrderDate,
            PrStatus      = entity.PrStatus,
            CreatedBy     = entity.CreatedBy,
            CreatedAt     = entity.CreatedAt,
            ModifiedBy    = entity.ModifiedBy,
            ModifiedAt    = entity.ModifiedAt,
            Lines         = entity.Lines.Select(l => l.ToLineResponseDto()).ToList()
        };
    }

    public static PRLineResponseDto ToLineResponseDto(this PurchaseRequisitionLine line)
    {
        return new PRLineResponseDto
        {
            Id                  = line.Id,
            PrSNo               = line.PrSNo,
            ItemCode            = line.ItemCode,
            ItemName            = line.ItemName,
            Uom                 = line.Uom,
            Rate                = line.Rate,
            CurrentStock        = line.CurrentStock,
            QtyRequired         = line.QtyRequired,
            RequiredDate        = line.RequiredDate,
            Place               = line.Place,
            ApproxCost          = line.ApproxCost,
            Remarks             = line.Remarks,
            MachineNo           = line.MachineNo,
            CostCentreCode      = line.CostCentreCode,
            BudgetGroupCode     = line.BudgetGroupCode,
            LastPoRate          = line.LastPoRate,
            LastPoDate          = line.LastPoDate,
            LastPoSupplierCode  = line.LastPoSupplierCode,
            LastPoSupplierName  = line.LastPoSupplierName,
            IsSample            = line.IsSample
        };
    }

    public static PurchaseRequisitionHeader ToEntity(this CreatePRHeaderDto dto, string prNo, string createdBy)
    {
        return new PurchaseRequisitionHeader
        {
            DivCode       = dto.DivCode,
            PrNo          = prNo,
            PrDate        = dto.PrDate,
            DepCode       = dto.DepCode,
            SubCostCode   = dto.SubCostCode,
            Section       = dto.Section,
            IType         = dto.IType,
            ReqName       = dto.ReqName,
            RefNo         = dto.RefNo,
            SaleOrderNo   = dto.SaleOrderNo,
            SaleOrderDate = dto.SaleOrderDate,
            PrStatus      = "DRAFT",
            CreatedBy     = createdBy
        };
    }
}
```

---

## 7. Repository Interface

### `IPurchaseRequisitionRepository.cs`

```csharp
namespace Spinrise.Application.Interfaces;

public interface IPurchaseRequisitionRepository
{
    // Pre-checks (V1, V2, V3 from VB6 Button 0)
    Task<PreCheckResult> RunPreChecksAsync(string divCode);

    // PR number generation
    Task<int> GetNextPrNumberAsync(string divCode, string finYear);

    // Feature flags (replaces all CustID hardcodes)
    Task<bool> GetFeatureFlagAsync(string divCode, string featureKey);

    // CRUD
    Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(string divCode, string? prNo,
        DateTime? fromDate, DateTime? toDate, string? depCode, string? status);

    Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, string prNo);

    Task<int> InsertHeaderAsync(PurchaseRequisitionHeader header);
    Task<int> InsertLineAsync(PurchaseRequisitionLine line);

    Task<int> UpdateHeaderAsync(PurchaseRequisitionHeader header);

    // Soft delete lines before re-inserting on update
    Task SoftDeleteLinesAsync(string divCode, string prNo);

    Task<int> DeleteAsync(string divCode, string prNo);
    Task<int> DeleteLineAsync(string divCode, string prNo, int prSNo);

    // Validation helpers (parameterized — no string concat)
    Task<bool> DepartmentExistsAsync(string divCode, string depCode);
    Task<bool> ItemExistsAsync(string divCode, string itemCode);
    Task<bool> CostCentreExistsAsync(string divCode, string ccCode);
    Task<bool> BudgetGroupExistsAsync(string divCode, string bgrpCode);
    Task<bool> MachineExistsAsync(string divCode, string machineNo);
}
```

---

## 8. Service Interface

### `IPurchaseRequisitionService.cs`

```csharp
namespace Spinrise.Application.Interfaces;

public interface IPurchaseRequisitionService
{
    Task<PreCheckResult> RunPreChecksAsync(string divCode);

    Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(string divCode, string? prNo,
        DateTime? fromDate, DateTime? toDate, string? depCode, string? status);

    Task<PRHeaderResponseDto?> GetByIdAsync(string divCode, string prNo);

    Task<(bool Success, string Message, string? PrNo)> CreateAsync(
        CreatePRHeaderDto dto, string createdBy);

    Task<(bool Success, string Message)> UpdateAsync(
        UpdatePRHeaderDto dto, string modifiedBy);

    Task<(bool Success, string Message)> DeleteAsync(string divCode, string prNo);

    Task<(bool Success, string Message)> DeleteLineAsync(string divCode, string prNo, int prSNo);
}
```

---

## 9. Service Implementation

### `PurchaseRequisitionService.cs`

Implement in `Spinrise.Application/Areas/Purchase/PurchaseRequisition/Services/PurchaseRequisitionService.cs`.

Follow the same `_uow.BeginAsync(startTransaction: true)` + try/catch + commit/rollback pattern from `UserService`.

**Validation sequence for `CreateAsync` — mirror VB6 logic exactly:**

```
1. Run pre-checks via repository (V1 item master, V2 dept, V3 doc number).
2. Validate PrDate == today (read backdate flag from feature_flags).
3. Validate DepCode exists in in_dep (V7).
4. If feature budget_validation_enabled == true, SubCostCode must not be empty (V8).
5. For each line:
   a. ItemCode must exist in in_item and IsActive = 1 (V10).
   b. Duplicate ItemCode across lines not allowed (V11).
   c. QtyRequired must be > 0 (V13).
   d. If RequiredDate provided, must be >= today (V15 for Add).
   e. If MachineNo provided, validate against mm_macmas filtered by DepCode (V17).
   f. If CostCentreCode provided, validate against in_cc (V18).
   g. If BudgetGroupCode provided, validate against in_bgrp (V19).
6. Generate PR number via usp_PR_GenerateNumber.
7. Begin transaction.
8. Insert header via usp_PR_Insert.
9. Insert each line via usp_PR_InsertLine (loop, PrSNo = 1-based index).
10. Commit transaction.
11. On any exception: rollback, return failure.
```

**Validation sequence for `UpdateAsync`:**

```
1. Verify PR exists and is not in CONVERTED or CLOSED status.
2. Validate DepCode.
3. For each line: same item and date validations as Create,
   except RequiredDate must be >= PrDate (V16 for Modify).
4. Begin transaction.
5. Update header via usp_PR_Update.
6. Soft delete all existing lines via SoftDeleteLinesAsync.
7. Re-insert all lines from dto.Lines (re-sequence PrSNo from 1).
8. Commit transaction.
9. On any exception: rollback, return failure.
```

**Critical — never use `If ... Then End` pattern:**

If a pending indent warning is needed (feature flag `pending_indent_check_enabled`), return a warning flag in the response DTO. Let the frontend decide. Never terminate or throw an unhandled exception as a flow control mechanism.

---

## 10. Repository Implementation

### `PurchaseRequisitionRepository.cs`

Implement in `Spinrise.Infrastructure/Areas/Purchase/PurchaseRequisition/PurchaseRequisitionRepository.cs`.

Constructor pattern — same as `UserRepository`:

```csharp
public class PurchaseRequisitionRepository : IPurchaseRequisitionRepository
{
    private readonly IUnitOfWork _uow;

    public PurchaseRequisitionRepository(IUnitOfWork uow)
    {
        _uow = uow;
    }
}
```

**Dapper method conventions — follow PROJECT_GUIDE rules exactly:**

```csharp
// GetAll — returns summary list
public async Task<IEnumerable<PRSummaryResponseDto>> GetAllAsync(...)
{
    return await _uow.Connection.QueryAsync<PRSummaryResponseDto>(
        "usp_PR_GetAll",
        new { DivCode = divCode, PrNo = prNo, FromDate = fromDate, ToDate = toDate, DepCode = depCode, Status = status },
        commandType: CommandType.StoredProcedure,
        transaction: _uow.Transaction);
}

// GetById — returns header + lines using multi-result set
public async Task<PurchaseRequisitionHeader?> GetByIdAsync(string divCode, string prNo)
{
    using var multi = await _uow.Connection.QueryMultipleAsync(
        "usp_PR_GetById",
        new { DivCode = divCode, PrNo = prNo },
        commandType: CommandType.StoredProcedure,
        transaction: _uow.Transaction);

    var header = await multi.ReadFirstOrDefaultAsync<PurchaseRequisitionHeader>();
    if (header == null) return null;
    header.Lines = (await multi.ReadAsync<PurchaseRequisitionLine>()).ToList();
    return header;
}

// InsertHeader — returns new Id
public async Task<int> InsertHeaderAsync(PurchaseRequisitionHeader h)
{
    return await _uow.Connection.ExecuteScalarAsync<int>(
        "usp_PR_Insert",
        new { h.DivCode, h.PrNo, h.PrDate, h.DepCode, h.DepName,
              h.Section, h.SubCostCode, h.IType, h.ReqName, h.RefNo,
              h.SaleOrderNo, h.SaleOrderDate, h.PrStatus, h.CreatedBy },
        commandType: CommandType.StoredProcedure,
        transaction: _uow.Transaction);
}

// Update — uses ExecuteScalarAsync<int> because usp returns @@ROWCOUNT
public async Task<int> UpdateHeaderAsync(PurchaseRequisitionHeader h)
{
    return await _uow.Connection.ExecuteScalarAsync<int>(
        "usp_PR_Update",
        new { h.DivCode, h.PrNo, h.DepCode, h.DepName, h.Section,
              h.SubCostCode, h.IType, h.ReqName, h.RefNo,
              h.SaleOrderNo, h.SaleOrderDate, h.ModifiedBy },
        commandType: CommandType.StoredProcedure,
        transaction: _uow.Transaction);
}

// Feature flag lookup — fully parameterized, no string concat
public async Task<bool> GetFeatureFlagAsync(string divCode, string featureKey)
{
    var result = await _uow.Connection.QueryFirstOrDefaultAsync<int?>(
        "SELECT IsEnabled FROM dbo.feature_flags WHERE DivCode = @DivCode AND FeatureKey = @FeatureKey",
        new { DivCode = divCode, FeatureKey = featureKey },
        transaction: _uow.Transaction);
    return result == 1;
}
```

---

## 11. Controller

### `PurchaseRequisitionController.cs`

Implement in `Spinrise.API/Areas/Purchase/Controllers/PurchaseRequisitionController.cs`.

```csharp
[ApiController]
[Route("api/v1/purchase-requisitions")]
public class PurchaseRequisitionController : BaseApiController
{
    private readonly IPurchaseRequisitionService _service;

    public PurchaseRequisitionController(IPurchaseRequisitionService service)
    {
        _service = service;
    }

    // Replicates VB6 Button 0 pre-check before entering Add mode
    [HttpGet("pre-checks")]
    public async Task<IActionResult> RunPreChecks([FromQuery] string divCode)
    {
        var result = await _service.RunPreChecksAsync(divCode);
        return Success(result, "Pre-checks completed.");
    }

    // Replicates VB6 Button 3 (Query / Search)
    [HttpGet]
    public async Task<IActionResult> GetAll(
        [FromQuery] string divCode,
        [FromQuery] string? prNo,
        [FromQuery] DateTime? fromDate,
        [FromQuery] DateTime? toDate,
        [FromQuery] string? depCode,
        [FromQuery] string? status)
    {
        var result = await _service.GetAllAsync(divCode, prNo, fromDate, toDate, depCode, status);
        return Success(result, "Purchase Requisitions retrieved successfully.");
    }

    // Replicates VB6 Button 1 (Modify — load existing PR)
    [HttpGet("{prNo}")]
    public async Task<IActionResult> GetById([FromQuery] string divCode, string prNo)
    {
        var result = await _service.GetByIdAsync(divCode, prNo);
        if (result == null) return Failure("Purchase Requisition not found.", StatusCodes.Status404NotFound);
        return Success(result, "Purchase Requisition retrieved successfully.");
    }

    // Replicates VB6 Button 9 (Save — Add mode)
    [HttpPost]
    public async Task<IActionResult> Create([FromBody] CreatePRHeaderDto dto)
    {
        // CreatedBy should come from authenticated user in production.
        // Placeholder until auth is implemented.
        var createdBy = "SYSTEM";
        var (success, message, prNo) = await _service.CreateAsync(dto, createdBy);
        if (!success) return Failure(message, StatusCodes.Status400BadRequest);
        return Success(new { PrNo = prNo }, message, StatusCodes.Status201Created);
    }

    // Replicates VB6 Button 9 (Save — Modify mode)
    [HttpPut("{prNo}")]
    public async Task<IActionResult> Update(string prNo, [FromBody] UpdatePRHeaderDto dto)
    {
        if (dto.PrNo != prNo)
            return Failure("PR Number in URL and body do not match.", StatusCodes.Status400BadRequest);
        var modifiedBy = "SYSTEM";
        var (success, message) = await _service.UpdateAsync(dto, modifiedBy);
        if (!success) return Failure(message, StatusCodes.Status400BadRequest);
        return SuccessMessage(message);
    }

    // Replicates VB6 Button 2 (Delete)
    [HttpDelete("{prNo}")]
    public async Task<IActionResult> Delete([FromQuery] string divCode, string prNo)
    {
        var (success, message) = await _service.DeleteAsync(divCode, prNo);
        if (!success) return Failure(message, StatusCodes.Status400BadRequest);
        return SuccessMessage(message);
    }

    // Replicates VB6 Button 12 (Line Delete)
    [HttpDelete("{prNo}/lines/{lineNo:int}")]
    public async Task<IActionResult> DeleteLine([FromQuery] string divCode, string prNo, int lineNo)
    {
        var (success, message) = await _service.DeleteLineAsync(divCode, prNo, lineNo);
        if (!success) return Failure(message, StatusCodes.Status400BadRequest);
        return SuccessMessage(message);
    }
}
```

---

## 12. Dependency Injection Registration

Add to `Spinrise.API/Program.cs` in the same block as `User` registrations:

```csharp
builder.Services.AddScoped<IPurchaseRequisitionRepository, PurchaseRequisitionRepository>();
builder.Services.AddScoped<IPurchaseRequisitionService, PurchaseRequisitionService>();
```

---

## 13. Validation Rules Reference for Service Layer

The agent must implement all these rules in `PurchaseRequisitionService.cs`.
Source: Section 4 of `PR_Form_Critical_Analysis.md`.

| Rule ID | Field | Condition | Error Message |
|---|---|---|---|
| V1 | — | `in_item` must have at least one record | "Please define Item in Item Master." |
| V2 | — | `in_dep` must have at least one department for division | "Please define Department in Setup." |
| V3 | — | `po_doc_para` must have entry for PURCHASE REQUISITION | "Please define Document No. for Requisition in Housekeeping." |
| V4 | PrDate | If backdate flag off, PrDate must equal today | "Date should be equal to current date or max PR date." |
| V5 | PrDate | Must be a valid date | Handled by model binding |
| V6 | PrDate | Must equal processing date | "PR date must be equal to processing date." |
| V7 | DepCode | Must exist in `in_dep` for current division | "Department not found. Please select a valid department." |
| V8 | SubCostCode | Required when `budget_validation_enabled = true` | "Sub Cost Centre is required when budget validation is enabled." |
| V9 | RefNo | Required when department is blank in certain flows | "Please enter the Reference Number." |
| V10 | ItemCode | Must exist in `in_item` and be active | "Item Code not found or inactive." |
| V11 | ItemCode | No duplicate item codes within same PR | "Duplicate item codes are not allowed in the same PR." |
| V13 | QtyRequired | Must be > 0 | "Quantity Required must be greater than zero." |
| V14 | RequiredDate | Must be a valid date | Handled by model binding |
| V15 | RequiredDate (Add) | Must be >= today | "Required Date must be on or after the processing date." |
| V16 | RequiredDate (Modify) | Must be >= PrDate | "Required Date cannot be before the PR Date." |
| V17 | MachineNo | Must exist in `mm_macmas` filtered by DepCode | "Machine not found for the selected department." |
| V18 | CostCentreCode | Must exist in `in_cc` for current division | "Cost Centre not found." |
| V19 | BudgetGroupCode | Must exist in `in_bgrp` | "Budget Group not found." |

---

## 14. Error Messages Catalogue

Implement these as constants in the service class or a shared `PRMessages` static class.
Source: Section 7 of `PR_Form_Critical_Analysis.md`.

```csharp
public static class PRMessages
{
    public const string ItemMasterMissing     = "Please define Item in Item Master.";
    public const string DepartmentMissing     = "Please define Department in Setup.";
    public const string DocNumberMissing      = "Please define Document No. for Requisition in Housekeeping.";
    public const string InvalidPrDate        = "PR date must be equal to processing date.";
    public const string DepartmentNotFound   = "Department not found. Please select a valid department.";
    public const string SubCostRequired      = "Sub Cost Centre is required when budget validation is enabled.";
    public const string RefNoRequired        = "Please enter the Reference Number.";
    public const string ItemNotFound         = "Item Code not found or inactive.";
    public const string DuplicateItem        = "Duplicate item codes are not allowed in the same PR.";
    public const string QtyRequired          = "Quantity Required must be greater than zero.";
    public const string RequiredDateInvalid  = "Required Date must be on or after the processing date.";
    public const string RequiredDateModify   = "Required Date cannot be before the PR Date.";
    public const string MachineNotFound      = "Machine not found for the selected department.";
    public const string CostCentreNotFound   = "Cost Centre not found.";
    public const string BudgetGroupNotFound  = "Budget Group not found.";
    public const string PrNotFound           = "Purchase Requisition not found.";
    public const string PrAlreadyConverted   = "This PR has already been converted to a PO and cannot be modified.";
    public const string ApprovalNotComplete  = "Final Level Approval not completed. Printout cannot be taken.";
    public const string NoPrRecords          = "No records found to print.";
}
```

---

## 15. API Endpoint Summary

| Method | Route | VB6 Button | Description |
|---|---|---|---|
| GET | `/api/v1/purchase-requisitions/pre-checks?divCode=` | Button 0 (New) | Pre-add validation checks |
| GET | `/api/v1/purchase-requisitions?divCode=&prNo=&fromDate=&toDate=&depCode=&status=` | Button 3 (Query) | Search / list PRs |
| GET | `/api/v1/purchase-requisitions/{prNo}?divCode=` | Button 1 (Modify load) | Get full PR with lines |
| POST | `/api/v1/purchase-requisitions` | Button 9 (Save — Add) | Create new PR |
| PUT | `/api/v1/purchase-requisitions/{prNo}` | Button 9 (Save — Modify) | Update existing PR |
| DELETE | `/api/v1/purchase-requisitions/{prNo}?divCode=` | Button 2 (Delete) | Soft delete PR and lines |
| DELETE | `/api/v1/purchase-requisitions/{prNo}/lines/{lineNo}?divCode=` | Button 12 (Line Delete) | Soft delete single line |

---

## 16. Known VB6 Defects — Do NOT Replicate

| VB6 Defect | Action for Agent |
|---|---|
| `If MsgBox = vbYes Then End` — kills the whole application | Return a warning flag in the response. Never use exceptions as flow control. |
| SQL injection via string concatenation | Always use Dapper parameterized queries with `@param` binding. No exceptions. |
| 15+ hardcoded `CustID` IF blocks | All replaced by `feature_flags` table. Use `GetFeatureFlagAsync` in service. |
| `adLockBatchOptimistic` — no explicit rollback | Always use `try/catch` with explicit `_uow.Rollback()` in service. |
| Crystal Reports hardcoded to `App.Path` | Print endpoint returns PDF byte array from a configurable template path. |
| `intervalminutes = 0` in every event handler | Session concerns belong in middleware only, never in module logic. |

---

## 17. Feature Flags Quick Reference

Use these exact string keys when calling `GetFeatureFlagAsync(divCode, key)`.

| Feature Key | Replaces VB6 Check | Default |
|---|---|---|
| `backdate_allowed` | `in_para.backdate = 'N'` check | `1` (allowed) |
| `budget_validation_enabled` | `CustID = "BANNARI"` check | `0` |
| `sale_order_linkage_enabled` | `CustID = "SARANYA"` check | `0` |
| `multi_division_stock_popup` | `CustID = "PALLAVA"` or `"SHRIGIRI"` | `0` |
| `pending_po_check_enabled` | `CustID = "SUBAM"` check | `0` |
| `pending_indent_check_enabled` | `po_para.PendingOrderPara = 'Y'` | `0` |
| `approval_required_before_print` | `CustID = "SHIVA-I"/"BANNARI"/"S.T.COTTEX"` | `0` |
| `rate_column_visible` | `CustID != "SKAATT"` check | `1` |

---

## 18. Implementation Checklist for Agent

Complete in this exact order. Do not skip steps.

- [ ] Create `po_prh` table script
- [ ] Create `po_prl` table script
- [ ] Create `feature_flags` table script
- [ ] Create all stored procedure scripts (01 through 08)
- [ ] Create seed data script for `feature_flags`
- [ ] Create `PurchaseRequisitionHeader.cs` entity
- [ ] Create `PurchaseRequisitionLine.cs` entity
- [ ] Create all DTO files (Create, Update, Response, Summary, Mappings)
- [ ] Create `IPurchaseRequisitionRepository.cs`
- [ ] Create `IPurchaseRequisitionService.cs`
- [ ] Create `PurchaseRequisitionRepository.cs` — all methods implemented
- [ ] Create `PurchaseRequisitionService.cs` — all validation rules implemented
- [ ] Create `PurchaseRequisitionController.cs`
- [ ] Register services in `Program.cs`
- [ ] Verify all Dapper calls use parameterized queries — no string concatenation
- [ ] Verify all write operations use transaction with explicit rollback on failure
- [ ] Verify `usp_PR_Update` and `usp_PR_Delete` use `ExecuteScalarAsync<int>` (returns `@@ROWCOUNT`)
- [ ] Verify `usp_PR_Insert` and `usp_PR_InsertLine` use `ExecuteScalarAsync<int>` (returns `SCOPE_IDENTITY()`)
- [ ] Verify controller only uses `BaseApiController` helpers: `Success`, `SuccessMessage`, `Failure`
- [ ] Verify no raw SQL inside controllers or services — all in repositories via stored procedures

---

*This document is the complete backend specification for the Purchase Requisition module.*
*Source: `PR_Form_Critical_Analysis.md` + `PROJECT_GUIDE.md`.*
*Kalpatharu Software Ltd · Spinrise ERP · Internal and Confidential.*
