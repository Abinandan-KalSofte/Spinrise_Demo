CREATE OR ALTER PROCEDURE dbo.ksp_PO_RequisitionReport_DateWise
(
    @DivCode   VARCHAR(2),
    @StartDate DATE,
    @EndDate   DATE
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.prdate                    AS PrDate,
        l.prno                      AS PrNo,
        l.itemcode                  AS ItemCode,
        i.ITEMNAME                  AS ItemName,
        i.UOM                       AS Uom,
        l.qtyreqd                   AS QtyRequired,
        l.qtyord                    AS QtyOrdered,
        l.qtyrec                    AS QtyReceived,
        l.prstatus                  AS PrStatus,
        d.DEPNAME                   AS DepName,
        dm.DIVNAME                  AS DivName,
        l.qtyind                    AS QtyIndented,
        dm.DIV_UNITNAME             AS DivUnitName,
        dm.DIV_PRINTNAME            AS DivPrintName,
        h.saleorderno               AS SaleOrderNo,
        h.saletype                  AS SaleType
    FROM       dbo.PO_PRH  h
    INNER JOIN dbo.PO_PRL  l   ON  h.divcode = l.divcode
                               AND h.prno    = l.prno
                               AND h.prdate  = l.prdate
    LEFT  JOIN dbo.IN_DEP  d   ON  h.depcode = d.DEPCODE
                               AND h.divcode = d.divcode
    INNER JOIN dbo.PP_DIVMAS dm ON h.divcode = dm.DIVCODE
    INNER JOIN dbo.IN_ITEM   i  ON l.itemcode = i.ITEMCODE
    WHERE h.divcode  = @DivCode
      AND h.prdate  >= @StartDate
      AND h.prdate  <= @EndDate
    ORDER BY h.prdate, l.prno, l.itemcode;
END;
