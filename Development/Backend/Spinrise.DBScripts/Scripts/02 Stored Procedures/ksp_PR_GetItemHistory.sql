CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetItemHistory
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 20
        h.PORDNO                                        AS PoNo,
        h.PORDDT                                        AS PoDate,
        h.SLCODE                                        AS SupplierCode,
        sl.slname                                       AS SupplierName,
        ISNULL(l.RATE, 0)                              AS Rate,
        ISNULL(l.ORDQTY,  0)                            AS OrderQty,
        ISNULL(l.RCVDQTY, 0)                            AS ReceivedQty,
        CAST(ISNULL(l.ORDQTY, 0) - ISNULL(l.RCVDQTY, 0) AS NUMERIC(12,3)) AS PendingQty
    FROM   dbo.PO_ORDH h
    INNER JOIN dbo.PO_ORDL l
        ON  l.DIVCODE = h.DIVCODE
        AND l.PORDNO  = h.PORDNO
        AND l.PORDDT  = h.PORDDT
        AND l.POGRP   = h.POGRP
    LEFT JOIN dbo.FA_SLMAS sl
        ON  sl.slcode = h.SLCODE
    WHERE  h.DIVCODE             = @DivCode
      AND  l.ITEMCODE            = @ItemCode
      AND  ISNULL(h.CANFLG, 'N') = 'N'
    ORDER BY h.PORDDT DESC;
END;
GO
