CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetApprovalStatus
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- PO approval flags
    SELECT DISTINCT
        ISNULL(c.FIRST_APPFLG, 'N') AS FirstAppFlg,
        ISNULL(c.APPFLG,       'N') AS AppFlg,
        ISNULL(c.fappflg,      'N') AS FinalAppFlg,
        c.APPUSERID                  AS AppUserId,
        c.APPDATE                    AS AppDate,
        c.FIRST_APPUSERID            AS FirstAppUserId,
        c.FIRST_APPDATE              AS FirstAppDate
    FROM dbo.RM_CONT c
    WHERE c.CONTNO  = @ContNo
      AND c.CONTDT  = @ContDt
      AND c.DIVCODE = @DivCode;

    -- Approval config for this division
    SELECT
        p.AppSno,
        p.AppLevelId,
        p.AppLevelName,
        p.AppUserId,
        p.AppUserName,
        p.AppUserPrintName,
        p.AppDesignation,
        p.AppLevel,
        p.AppActiveFlg,
        p.imagePath
    FROM dbo.PO_ParaPOApproval p
    WHERE p.divcode = @DivCode
      AND ISNULL(p.AppActiveFlg, 'Y') = 'Y'
    ORDER BY p.AppSno;
END;
