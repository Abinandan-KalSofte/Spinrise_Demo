-- ── Department Exists ─────────────────────────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_DepartmentExists
    @DivCode VARCHAR(2),
    @DepCode VARCHAR(3)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_dep
        WHERE divcode = @DivCode AND DEPCODE = @DepCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── Item Exists ───────────────────────────────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_ItemExists
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_item
        WHERE ITEMCODE = @ItemCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── Cost Centre Exists ────────────────────────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_CostCentreExists
    @DivCode        VARCHAR(2),
    @CostCentreCode VARCHAR(5)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_cc
        WHERE divcode = @DivCode AND CCCODE = @CostCentreCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── Budget Group Exists ───────────────────────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_BudgetGroupExists
    @BudgetGroupCode VARCHAR(4)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_bgrp
        WHERE BGRPCODE = @BudgetGroupCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── Machine Exists (MACFLAG='M', salesflag='N') ───────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_MachineExists
    @DivCode   VARCHAR(2),
    @DepCode   VARCHAR(3),
    @MachineNo VARCHAR(5)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.mm_macmas
        WHERE DIVCODE  = @DivCode
          AND DEPCODE  = @DepCode
          AND MAC_NO   = @MachineNo
          AND MACFLAG  = 'M'
          AND ISNULL(salesflag, 'N') = 'N'
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── Delete Reason Exists ──────────────────────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_DeleteReasonExists
    @ReasonCode VARCHAR(15)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.po_txndelreason
        WHERE Delcode = @ReasonCode AND ISNULL(active, 'Y') = 'Y'
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── Category Exists ──────────────────────────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_CategoryExists
    @DivCode VARCHAR(2),
    @CatCode VARCHAR(1)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.in_cat
        WHERE CATCODE = @CatCode
          AND DIVCODE = @DivCode
    ) THEN 1 ELSE 0 END AS [Exists];
END;
GO

-- ── PR Linked to Enquiry (block delete) ───────────────────────────────────
CREATE OR ALTER PROCEDURE dbo.ksp_PR_IsLinkedToEnquiry
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT CASE WHEN EXISTS (
        SELECT 1 FROM dbo.po_enql
        WHERE divcode = @DivCode AND prno = @PrNo
    ) THEN 1 ELSE 0 END AS [Linked];
END;
