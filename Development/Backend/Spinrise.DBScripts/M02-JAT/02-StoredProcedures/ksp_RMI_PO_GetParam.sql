CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetParam
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ISNULL(SuppLotNoReqArrival, 'N') AS SuppLotNoReqArrival,
        ISNULL(CentralizedOrder,    'N') AS CentralizedOrder,
        ISNULL(SeasonCalcReq,       'N') AS SeasonCalcReq,
        ISNULL(MasterEntryFlg,      'N') AS MasterEntryFlg,
        ISNULL(PRBased,             'N') AS PRBased,
        ISNULL(PO_Approval,         'N') AS PO_Approval,
        ISNULL(addtaxrequired,      'N') AS AddTaxRequired,
        ISNULL(ftamt,               0)   AS FtAmt,
        ISNULL(wosample,            'Y') AS wosample
    FROM   dbo.RM_PARAM
    WHERE  divcode = @DivCode;
END;
GO
