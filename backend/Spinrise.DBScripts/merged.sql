-- AUTO GENERATED MERGED SCRIPT 
-- DO NOT EDIT MANUALLY 
 
-- ===================================== 
-- File: 01_CreateUsersTable.sql 
-- ===================================== 
﻿IF OBJECT_ID('dbo.Users', 'U') IS NOT NULL
    DROP TABLE dbo.Users;
GO

CREATE TABLE dbo.Users
(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
GO

CREATE UNIQUE INDEX UX_Users_Email
ON dbo.Users(Email);
GO
 
GO 
 
-- ===================================== 
-- File: 01_po_prh.sql 
-- ===================================== 
CREATE TABLE dbo.po_prh
(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DivCode VARCHAR(10) NOT NULL,
    PrNo VARCHAR(20) NOT NULL,
    PrDate DATE NOT NULL,
    DepCode VARCHAR(10) NOT NULL,
    DepName VARCHAR(100) NULL,
    Section VARCHAR(100) NULL,
    SubCostCode VARCHAR(20) NULL,
    IType VARCHAR(20) NULL,
    ReqName VARCHAR(100) NULL,
    RefNo VARCHAR(50) NULL,
    SaleOrderNo VARCHAR(50) NULL,
    SaleOrderDate DATE NULL,
    PrStatus VARCHAR(20) NOT NULL CONSTRAINT DF_po_prh_PrStatus DEFAULT ('DRAFT'),
    CreatedBy VARCHAR(50) NOT NULL,
    CreatedAt DATETIME NOT NULL CONSTRAINT DF_po_prh_CreatedAt DEFAULT (GETDATE()),
    ModifiedBy VARCHAR(50) NULL,
    ModifiedAt DATETIME NULL,
    IsDeleted BIT NOT NULL CONSTRAINT DF_po_prh_IsDeleted DEFAULT (0),
    CONSTRAINT UQ_po_prh_PrNo UNIQUE (DivCode, PrNo)
);
 
GO 
 
-- ===================================== 
-- File: 02_po_prl.sql 
-- ===================================== 
CREATE TABLE dbo.po_prl
(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DivCode VARCHAR(10) NOT NULL,
    PrNo VARCHAR(20) NOT NULL,
    PrSNo INT NOT NULL,
    ItemCode VARCHAR(30) NOT NULL,
    ItemName VARCHAR(200) NULL,
    Uom VARCHAR(20) NULL,
    Rate DECIMAL(18,4) NULL,
    CurrentStock DECIMAL(18,4) NULL,
    QtyRequired DECIMAL(18,4) NOT NULL,
    RequiredDate DATE NULL,
    Place VARCHAR(100) NULL,
    ApproxCost DECIMAL(18,2) NULL,
    Remarks VARCHAR(500) NULL,
    MachineNo VARCHAR(30) NULL,
    CostCentreCode VARCHAR(20) NULL,
    BudgetGroupCode VARCHAR(20) NULL,
    LastPoRate DECIMAL(18,4) NULL,
    LastPoDate DATE NULL,
    LastPoSupplierCode VARCHAR(20) NULL,
    LastPoSupplierName VARCHAR(100) NULL,
    IsSample BIT NOT NULL CONSTRAINT DF_po_prl_IsSample DEFAULT (0),
    DirectApp VARCHAR(1) NULL CONSTRAINT DF_po_prl_DirectApp DEFAULT ('N'),
    IsDeleted BIT NOT NULL CONSTRAINT DF_po_prl_IsDeleted DEFAULT (0),
    CONSTRAINT UQ_po_prl_Line UNIQUE (DivCode, PrNo, PrSNo),
    CONSTRAINT FK_po_prl_Header FOREIGN KEY (DivCode, PrNo)
        REFERENCES dbo.po_prh (DivCode, PrNo)
);
 
GO 
 
-- ===================================== 
-- File: 03_feature_flags.sql 
-- ===================================== 
CREATE TABLE dbo.feature_flags
(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DivCode VARCHAR(10) NOT NULL,
    FeatureKey VARCHAR(100) NOT NULL,
    IsEnabled BIT NOT NULL CONSTRAINT DF_feature_flags_IsEnabled DEFAULT (0),
    CONSTRAINT UQ_feature_flags UNIQUE (DivCode, FeatureKey)
);
 
GO 
 
-- ===================================== 
-- File: 01_usp_PR_GetAll.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_GetAll
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20) = NULL,
    @FromDate DATE = NULL,
    @ToDate DATE = NULL,
    @DepCode VARCHAR(10) = NULL,
    @Status VARCHAR(20) = NULL
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
    LEFT JOIN dbo.po_prl l
        ON l.DivCode = h.DivCode
        AND l.PrNo = h.PrNo
        AND l.IsDeleted = 0
    WHERE h.DivCode = @DivCode
      AND h.IsDeleted = 0
      AND (@PrNo IS NULL OR h.PrNo = @PrNo)
      AND (@FromDate IS NULL OR h.PrDate >= @FromDate)
      AND (@ToDate IS NULL OR h.PrDate <= @ToDate)
      AND (@DepCode IS NULL OR h.DepCode = @DepCode)
      AND (@Status IS NULL OR h.PrStatus = @Status)
    GROUP BY
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
        h.CreatedAt
    ORDER BY h.PrDate DESC, h.PrNo DESC;
END;
 
GO 
 
-- ===================================== 
-- File: 01_usp_User_GetAll.sql 
-- ===================================== 
IF OBJECT_ID('dbo.usp_User_GetAll', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_GetAll;
GO

CREATE PROCEDURE dbo.usp_User_GetAll
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, Name, Email
    FROM dbo.Users
    ORDER BY Name;
END
GO
 
GO 
 
-- ===================================== 
-- File: 02_usp_PR_GetById.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_GetById
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
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
        h.SaleOrderNo,
        h.SaleOrderDate,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        h.ModifiedBy,
        h.ModifiedAt
    FROM dbo.po_prh h
    WHERE h.DivCode = @DivCode
      AND h.PrNo = @PrNo
      AND h.IsDeleted = 0;

    SELECT
        l.Id,
        l.DivCode,
        l.PrNo,
        l.PrSNo,
        l.ItemCode,
        l.ItemName,
        l.Uom,
        l.Rate,
        l.CurrentStock,
        l.QtyRequired,
        l.RequiredDate,
        l.Place,
        l.ApproxCost,
        l.Remarks,
        l.MachineNo,
        l.CostCentreCode,
        l.BudgetGroupCode,
        l.LastPoRate,
        l.LastPoDate,
        l.LastPoSupplierCode,
        l.LastPoSupplierName,
        l.IsSample,
        l.DirectApp
    FROM dbo.po_prl l
    WHERE l.DivCode = @DivCode
      AND l.PrNo = @PrNo
      AND l.IsDeleted = 0
    ORDER BY l.PrSNo;
END;
 
GO 
 
-- ===================================== 
-- File: 02_usp_User_GetById.sql 
-- ===================================== 
IF OBJECT_ID('dbo.usp_User_GetById', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_GetById;
GO

CREATE PROCEDURE dbo.usp_User_GetById
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, Name, Email
    FROM dbo.Users
    WHERE Id = @Id;
END
GO
 
GO 
 
-- ===================================== 
-- File: 03_usp_PR_Insert.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_Insert
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrDate DATE,
    @DepCode VARCHAR(10),
    @DepName VARCHAR(100) = NULL,
    @Section VARCHAR(100) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @IType VARCHAR(20) = NULL,
    @ReqName VARCHAR(100) = NULL,
    @RefNo VARCHAR(50) = NULL,
    @SaleOrderNo VARCHAR(50) = NULL,
    @SaleOrderDate DATE = NULL,
    @PrStatus VARCHAR(20),
    @CreatedBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prh
    (
        DivCode,
        PrNo,
        PrDate,
        DepCode,
        DepName,
        Section,
        SubCostCode,
        IType,
        ReqName,
        RefNo,
        SaleOrderNo,
        SaleOrderDate,
        PrStatus,
        CreatedBy
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrDate,
        @DepCode,
        @DepName,
        @Section,
        @SubCostCode,
        @IType,
        @ReqName,
        @RefNo,
        @SaleOrderNo,
        @SaleOrderDate,
        @PrStatus,
        @CreatedBy
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
GO

CREATE OR ALTER PROCEDURE dbo.usp_PR_InsertLine
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrSNo INT,
    @ItemCode VARCHAR(30),
    @ItemName VARCHAR(200) = NULL,
    @Uom VARCHAR(20) = NULL,
    @Rate DECIMAL(18,4) = NULL,
    @CurrentStock DECIMAL(18,4) = NULL,
    @QtyRequired DECIMAL(18,4),
    @RequiredDate DATE = NULL,
    @Place VARCHAR(100) = NULL,
    @ApproxCost DECIMAL(18,2) = NULL,
    @Remarks VARCHAR(500) = NULL,
    @MachineNo VARCHAR(30) = NULL,
    @CostCentreCode VARCHAR(20) = NULL,
    @BudgetGroupCode VARCHAR(20) = NULL,
    @LastPoRate DECIMAL(18,4) = NULL,
    @LastPoDate DATE = NULL,
    @LastPoSupplierCode VARCHAR(20) = NULL,
    @LastPoSupplierName VARCHAR(100) = NULL,
    @IsSample BIT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.po_prl
    (
        DivCode,
        PrNo,
        PrSNo,
        ItemCode,
        ItemName,
        Uom,
        Rate,
        CurrentStock,
        QtyRequired,
        RequiredDate,
        Place,
        ApproxCost,
        Remarks,
        MachineNo,
        CostCentreCode,
        BudgetGroupCode,
        LastPoRate,
        LastPoDate,
        LastPoSupplierCode,
        LastPoSupplierName,
        IsSample
    )
    VALUES
    (
        @DivCode,
        @PrNo,
        @PrSNo,
        @ItemCode,
        @ItemName,
        @Uom,
        @Rate,
        @CurrentStock,
        @QtyRequired,
        @RequiredDate,
        @Place,
        @ApproxCost,
        @Remarks,
        @MachineNo,
        @CostCentreCode,
        @BudgetGroupCode,
        @LastPoRate,
        @LastPoDate,
        @LastPoSupplierCode,
        @LastPoSupplierName,
        @IsSample
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END;
 
GO 
 
-- ===================================== 
-- File: 03_usp_User_Insert.sql 
-- ===================================== 
IF OBJECT_ID('dbo.usp_User_Insert', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Insert;
GO

CREATE PROCEDURE dbo.usp_User_Insert
    @Name NVARCHAR(100),
    @Email NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Users (Name, Email)
    VALUES (@Name, @Email);

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END
GO
 
GO 
 
-- ===================================== 
-- File: 04_usp_PR_Update.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_Update
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @DepCode VARCHAR(10),
    @DepName VARCHAR(100) = NULL,
    @Section VARCHAR(100) = NULL,
    @SubCostCode VARCHAR(20) = NULL,
    @IType VARCHAR(20) = NULL,
    @ReqName VARCHAR(100) = NULL,
    @RefNo VARCHAR(50) = NULL,
    @SaleOrderNo VARCHAR(50) = NULL,
    @SaleOrderDate DATE = NULL,
    @ModifiedBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prh
    SET DepCode = @DepCode,
        DepName = @DepName,
        Section = @Section,
        SubCostCode = @SubCostCode,
        IType = @IType,
        ReqName = @ReqName,
        RefNo = @RefNo,
        SaleOrderNo = @SaleOrderNo,
        SaleOrderDate = @SaleOrderDate,
        ModifiedBy = @ModifiedBy,
        ModifiedAt = GETDATE()
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
GO

CREATE OR ALTER PROCEDURE dbo.usp_PR_SoftDeleteLines
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;
END;
 
GO 
 
-- ===================================== 
-- File: 04_usp_User_Update.sql 
-- ===================================== 
IF OBJECT_ID('dbo.usp_User_Update', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Update;
GO

CREATE PROCEDURE dbo.usp_User_Update
    @Id INT,
    @Name NVARCHAR(100),
    @Email NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.Users
    SET Name = @Name,
        Email = @Email
    WHERE Id = @Id;

    SELECT @@ROWCOUNT;
END
GO
 
GO 
 
-- ===================================== 
-- File: 05_usp_PR_Delete.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_Delete
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo;

    UPDATE dbo.po_prh
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
 
GO 
 
-- ===================================== 
-- File: 05_usp_User_Delete.sql 
-- ===================================== 
IF OBJECT_ID('dbo.usp_User_Delete', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Delete;
GO

CREATE PROCEDURE dbo.usp_User_Delete
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM dbo.Users
    WHERE Id = @Id;

    SELECT @@ROWCOUNT;
END
GO
 
GO 
 
-- ===================================== 
-- File: 06_usp_PR_DeleteLine.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_DeleteLine
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20),
    @PrSNo INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.po_prl
    SET IsDeleted = 1
    WHERE DivCode = @DivCode
      AND PrNo = @PrNo
      AND PrSNo = @PrSNo
      AND IsDeleted = 0;

    SELECT @@ROWCOUNT;
END;
 
GO 
 
-- ===================================== 
-- File: 07_usp_PR_PreChecks.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_PreChecks
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ItemExists BIT = 0,
            @DeptExists BIT = 0,
            @DocExists BIT = 0;

    IF EXISTS (SELECT 1 FROM dbo.in_item WHERE DivCode = @DivCode AND IsActive = 1)
        SET @ItemExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode)
        SET @DeptExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.po_doc_para WHERE DivCode = @DivCode AND TC = 'PURCHASE REQUISITION')
        SET @DocExists = 1;

    SELECT
        @ItemExists AS ItemMasterExists,
        @DeptExists AS DepartmentExists,
        @DocExists AS DocNumberConfigured;
END;
 
GO 
 
-- ===================================== 
-- File: 08_usp_PR_GenerateNumber.sql 
-- ===================================== 
CREATE OR ALTER PROCEDURE dbo.usp_PR_GenerateNumber
    @DivCode VARCHAR(10),
    @FinYear VARCHAR(9)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo INT;

    SELECT @NextNo = ISNULL(MAX(CAST(RIGHT(PrNo, 5) AS INT)), 0) + 1
    FROM dbo.po_prh
    WHERE DivCode = @DivCode
      AND PrNo LIKE '%' + @FinYear + '%'
      AND IsDeleted = 0;

    SELECT @NextNo AS NextNumber;
END;
 
GO 
 
-- ===================================== 
-- File: 01_feature_flags_seed.sql 
-- ===================================== 
INSERT INTO dbo.feature_flags (DivCode, FeatureKey, IsEnabled)
VALUES
    ('DEFAULT', 'budget_validation_enabled', 0),
    ('DEFAULT', 'sale_order_linkage_enabled', 0),
    ('DEFAULT', 'multi_division_stock_popup', 0),
    ('DEFAULT', 'pending_po_check_enabled', 0),
    ('DEFAULT', 'pending_indent_check_enabled', 0),
    ('DEFAULT', 'approval_required_before_print', 0),
    ('DEFAULT', 'rate_column_visible', 1),
    ('DEFAULT', 'backdate_allowed', 1);
 
GO 
 
-- ===================================== 
-- File: 03_SeedUsers.sql 
-- ===================================== 
﻿INSERT INTO dbo.Users (Name, Email)
VALUES
    ('Alice Johnson', 'alice.johnson@example.com'),
    ('Bob Summers', 'bob.summers@example.com'),
    ('Carol Martinez', 'carol.martinez@example.com');
 
GO 
 
