CREATE OR ALTER PROCEDURE dbo.ksp_PR_PendingIndentCheck
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10),
    @DepCode  VARCHAR(3),
    @YFDate   DATE,
    @YLDate   DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PendingQty NUMERIC(12,3) = 0;

    SELECT @PendingQty = ISNULL(SUM(L.ORDQTY - ISNULL(L.RCVDQTY, 0)), 0)
    FROM   dbo.po_ordh H
    JOIN   dbo.po_ordl L
        ON  H.DIVCODE = L.DIVCODE
        AND H.PORDNO  = L.PORDNO
        AND H.PORDDT  = L.PORDDT
        AND H.POGRP   = L.POGRP
    WHERE  H.DIVCODE   = @DivCode
      AND  L.ITEMCODE  = @ItemCode
      AND  H.PORDDT   >= @YFDate
      AND  H.PORDDT   <= @YLDate
      AND  ISNULL(H.CANFLG, '') <> 'Y'
      AND  L.ORDQTY > ISNULL(L.RCVDQTY, 0);

    SELECT
        CASE WHEN @PendingQty > 0 THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS HasPendingIndent,
        @PendingQty AS PendingQty;
END;
