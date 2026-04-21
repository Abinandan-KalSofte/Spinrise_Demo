CREATE OR ALTER PROCEDURE dbo.ksp_GetItemsEnriched
    @DivCode    VARCHAR(2),
    @SearchTerm VARCHAR(100),
    @DepCode    VARCHAR(5)  = NULL,
    @ItemGroup  VARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(@SearchTerm));

    IF LEN(@Term) < 2
    BEGIN
        SELECT TOP 0
            CAST('' AS VARCHAR(10))      AS ItemCode,
            CAST('' AS VARCHAR(70))      AS ItemName,
            CAST('' AS VARCHAR(3))       AS Uom,
            CAST(NULL AS DECIMAL(20,3))  AS CurrentStock,
            CAST(0   AS NUMERIC(12,3))   AS PendingPrQty,
            CAST(0   AS NUMERIC(12,3))   AS PendingPoQty,
            CAST(0   AS DECIMAL(12,3))   AS MinLevel
        FROM dbo.in_item WHERE 1 = 0;
        RETURN;
    END

    SET @Term = @Term + '%';

    SELECT TOP 20
        i.ITEMCODE                          AS ItemCode,
        i.ITEMNAME                          AS ItemName,
        i.UOM                               AS Uom,
        i.CURSTK                            AS CurrentStock,
        ISNULL(i.MINLEVEL, 0)               AS MinLevel,
        -- Pending PR qty: lines not yet converted to PO or received
        (
            SELECT ISNULL(SUM(prl.QTYREQD), 0)
            FROM   dbo.PO_PRL prl
            WHERE  prl.ITEMCODE              = i.ITEMCODE
              AND  prl.DIVCODE               = @DivCode
              AND  ISNULL(prl.prstatus, ' ')  NOT IN ('O', 'C')
              AND  ISNULL(prl.AmdFlg,   '')   <>  'Y'
        )                                   AS PendingPrQty,
        -- Pending PO qty: ordered but not fully received, non-cancelled orders
        (
            SELECT ISNULL(SUM(ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)), 0)
            FROM   dbo.PO_ORDL o
            JOIN   dbo.PO_ORDH h
                ON  h.DIVCODE = o.DIVCODE
                AND h.PORDNO  = o.PORDNO
                AND h.PORDDT  = o.PORDDT
                AND h.POGRP   = o.POGRP
            WHERE  o.ITEMCODE              = i.ITEMCODE
              AND  o.DIVCODE               = @DivCode
              AND  ISNULL(h.CANFLG, 'N')   = 'N'
              AND  (ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) > 0
        )                                   AS PendingPoQty
    FROM   dbo.in_item i
    WHERE  i.IsItemActive = 1
      AND  (i.ITEMCODE LIKE @Term OR i.ITEMNAME LIKE @Term)
    ORDER BY
        CASE WHEN i.ITEMCODE LIKE @Term THEN 0 ELSE 1 END,
        i.ITEMNAME;
END;
GO
