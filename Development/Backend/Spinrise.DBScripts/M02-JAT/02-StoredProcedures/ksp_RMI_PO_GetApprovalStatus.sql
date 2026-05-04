CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetApprovalStatus
    @ContNo  NUMERIC(9,0),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1
        ISNULL(c.FIRST_APPFLG, '') AS FirstAppFlg,
        ISNULL(c.fappflg,      '') AS FAppFlg,
        ISNULL(c.Appflg,       '') AS AppFlg,
        ISNULL(c.CancelFlg,    '') AS CancelFlag
    FROM   dbo.RM_CONT c
    WHERE  c.CONTNO  = @ContNo
      AND  CAST(c.CONTDT AS DATE) = CAST(@ContDt AS DATE)
      AND  c.DIVCODE = @DivCode;
END;
