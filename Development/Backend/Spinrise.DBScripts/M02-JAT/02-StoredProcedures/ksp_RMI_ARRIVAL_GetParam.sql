-- Returns all RM_PARAM flags needed by the Arrival Entry module + current financial year dates.
-- Includes legacy PO param flags for shared config awareness.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_GetParam
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Config flags from RM_PARAM (single-row table)
    SELECT
        ISNULL(SuppLotNoReqArrival,  'Y') AS SuppLotNoReqArrival,
        ISNULL(SeasonCalcReq,        'N') AS SeasonCalcReq,
        ISNULL(CentralizedOrder,     'N') AS CentralizedOrder,
        ISNULL(POWtTolerance,        0)   AS POWtTolerance,
        ISNULL(MasterEntryFlg,       'N') AS MasterEntryFlg,
        ISNULL(poimportdivision,     '')  AS ImportDivCode,
        ISNULL(FREIGHTGLCODE,        '')  AS FreightGLCode,
        ISNULL(CarrierGL,            '')  AS CarrierGL
    FROM dbo.RM_PARAM;

    -- Financial year boundaries for current date from RM_LOT
    SELECT TOP 1
        yfdate AS YearFromDate,
        yldate AS YearToDate,
        pdate  AS ProcessingDate
    FROM dbo.RM_LOT
    WHERE Divcode = @DivCode
      AND GETDATE() BETWEEN yfdate AND yldate;
END;
GO
