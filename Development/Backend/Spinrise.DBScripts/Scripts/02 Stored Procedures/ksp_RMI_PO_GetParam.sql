CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetParam
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ISNULL(SuppLotNoReqArrival, 'N') AS SuppLotNoReqArrival,
        ISNULL(CentralizedOrder,    'N') AS CentralizedOrder,
        ISNULL(SeasonCalcReq,       'N') AS SeasonCalcReq,
        ISNULL(MasterEntryFlg,      'N') AS MasterEntryFlg,
        ISNULL(PRBased,             'Y') AS PRBased,
        ISNULL(PO_Approval,         'Y') AS POApproval,
        ISNULL(AddTaxRequired,      'N') AS AddTaxRequired,
        ISNULL(FTAmt,                0)  AS DefaultFTAmt
    FROM dbo.RM_PARAM;
END;
