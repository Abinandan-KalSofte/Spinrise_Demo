CREATE OR ALTER PROCEDURE dbo.ksp_PR_PreChecks
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- ── Setup existence flags ────────────────────────────────────────────────
    DECLARE
        @ItemMasterExists    BIT = 0,
        @DeptExists          BIT = 0,
        @DocNumberConfigured BIT = 0;

    IF EXISTS (SELECT 1 FROM dbo.in_item)
        SET @ItemMasterExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE divcode = @DivCode)
        SET @DeptExists = 1;

    IF EXISTS (
        SELECT 1 FROM dbo.po_doc_para
        WHERE TC = 'PURCHASE REQUISITION'
    )
        SET @DocNumberConfigured = 1;

    -- ── po_para configuration flags ──────────────────────────────────────────
    DECLARE
        @BackDate            VARCHAR(5) = 'Y',
        @BudgetQty           CHAR(1)    = 'N',
        @PendingOrderPara    VARCHAR(5) = 'N',
        @PendPRCheck         CHAR(1)    = 'N',
        @IndItemGrp          CHAR(1)    = 'N',
        @PRApprovalStatus    VARCHAR(5) = 'N',
        @ManualIndNo         CHAR(1)    = 'N',
        @PenPoDetails        VARCHAR(10)= 'N',
        @PurTypeFlg          VARCHAR(5) = 'N',
        @RequireReqName      CHAR(1)    = 'N',
        @RequireRefNo        CHAR(1)    = 'N';

    SELECT
        @BudgetQty        = ISNULL(BudgetQty,        'N'),
        @PendingOrderPara = ISNULL(pendingorderpara,  'N'),
        @PendPRCheck      = ISNULL(PendPRCheck,       'N'),
        @IndItemGrp       = ISNULL(InditemGrp,        'N'),
        @PRApprovalStatus = ISNULL(PRapprovalstatus,  'N'),
        @ManualIndNo      = ISNULL(Manual_IndNo,      'N'),
        @PenPoDetails     = ISNULL(Penpodetails,      'N'),
        @PurTypeFlg       = ISNULL(purtypeflg,        'N'),
        @RequireReqName   = ISNULL(RequireReqName,    'N'),
        @RequireRefNo     = ISNULL(RequireRefNo,      'N')
    FROM dbo.po_para
    WHERE divcode = @DivCode;

    SELECT @BackDate = ISNULL(backdate, 'Y')
    FROM   dbo.in_para;

    -- ── Result set ───────────────────────────────────────────────────────────
    SELECT
        @ItemMasterExists                                                               AS ItemMasterExists,
        @DeptExists                                                                     AS DepartmentExists,
        @DocNumberConfigured                                                            AS DocNumberConfigured,
        CASE WHEN @BackDate         = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS BackDateAllowed,
        CASE WHEN @BudgetQty        = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS BudgetValidationEnabled,
        CASE WHEN @PendingOrderPara = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingIndentCheckEnabled,
        CASE WHEN @PendPRCheck      = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingPRCheckEnabled,
        CASE WHEN @IndItemGrp       = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ItemGroupFilterEnabled,
        CASE WHEN @PRApprovalStatus = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ApprovalStatusVisible,
        CASE WHEN @ManualIndNo      = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS ManualPrNumberEnabled,
        CASE WHEN @PenPoDetails     = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PendingPoDetailsEnabled,
        CASE WHEN @PurTypeFlg      <> 'N' AND @PurTypeFlg <> '' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS PurTypeFlgEnabled,
        CASE WHEN @RequireReqName   = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS RequireRequesterName,
        CASE WHEN @RequireRefNo     = 'Y' THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS RequireRefNo;
END;
