CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetSummary
    @DivCode  VARCHAR(2),
    @FY_Start DATE = NULL,
    @FY_End   DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Today DATE = CAST(GETDATE() AS DATE);

    IF @FY_Start IS NULL
        SET @FY_Start = CASE WHEN MONTH(@Today) >= 4
                             THEN DATEFROMPARTS(YEAR(@Today),     4, 1)
                             ELSE DATEFROMPARTS(YEAR(@Today) - 1, 4, 1) END;

    IF @FY_End IS NULL
        SET @FY_End = CASE WHEN MONTH(@Today) >= 4
                           THEN DATEFROMPARTS(YEAR(@Today) + 1, 3, 31)
                           ELSE DATEFROMPARTS(YEAR(@Today),     3, 31) END;

    WITH POHeaders AS (
        SELECT
            CONTNO, CONTDT,
            MAX(ISNULL(Appflg,       '')) AS AppFlg,
            MAX(ISNULL(FIRST_APPFLG, '')) AS FirstAppFlg,
            MAX(ISNULL(CancelFlg,    '')) AS CancelFlag
        FROM dbo.RM_CONT
        WHERE DIVCODE = @DivCode
          AND CAST(CONTDT AS DATE) >= @FY_Start
          AND CAST(CONTDT AS DATE) <= @FY_End
        GROUP BY CONTNO, CONTDT
    )
    SELECT
        COUNT(*)                                                          AS TotalPOs,
        SUM(CASE WHEN CancelFlag  = 'Y'                 THEN 1 ELSE 0 END) AS TotalCancelled,
        SUM(CASE WHEN AppFlg      = 'Y' AND CancelFlag <> 'Y' THEN 1 ELSE 0 END) AS TotalApproved,
        SUM(CASE WHEN FirstAppFlg = 'Y' AND AppFlg    <> 'Y'
                                        AND CancelFlag <> 'Y' THEN 1 ELSE 0 END) AS TotalLevel1,
        SUM(CASE WHEN ISNULL(FirstAppFlg,'') <> 'Y'
                  AND CancelFlag <> 'Y'       THEN 1 ELSE 0 END) AS TotalPending
    FROM POHeaders;
END;
