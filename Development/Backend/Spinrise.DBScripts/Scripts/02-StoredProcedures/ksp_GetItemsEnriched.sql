CREATE OR ALTER PROCEDURE dbo.ksp_GetItemsEnriched
    @DivCode    VARCHAR(2),
    @SearchTerm VARCHAR(100),
    @DepCode    VARCHAR(5)  = NULL,
    @ItemGroup  VARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DECLARE @Term VARCHAR(101) = LTRIM(RTRIM(@SearchTerm));

    -- Require at least 2 chars UNLESS a specific department is given.
    -- When @DepCode is provided with an empty term, load all items (modal open with no filter).
    IF LEN(@Term) < 2 AND @DepCode IS NULL
    BEGIN
        SELECT TOP 0
            CAST('' AS VARCHAR(10))      AS ItemCode,
            CAST('' AS VARCHAR(70))      AS ItemName,
            CAST('' AS VARCHAR(3))       AS Uom,
            CAST(NULL AS DECIMAL(20,3))  AS CurrentStock,
            CAST(0   AS NUMERIC(12,3))   AS PendingPrQty,
            CAST(0   AS NUMERIC(12,3))   AS PendingPoQty,
            CAST(0   AS DECIMAL(12,3))   AS MinLevel,
            CAST('' AS VARCHAR(25))      AS DrawNo,
            CAST('' AS VARCHAR(25))      AS CatNo
        FROM dbo.in_item WHERE 1 = 0;
        RETURN;
    END

    -- Empty term with a dept context → match all (modal load-all on open)
    SET @Term = CASE WHEN LEN(@Term) >= 1 THEN @Term + '%' ELSE '%' END;

    -- Pending PR qty — scoped to requesting dept when provided
    WITH PendingPr AS
    (
        SELECT
            prl.ITEMCODE,
            SUM(ISNULL(prl.QTYREQD, 0)) AS TotalPendingPr
        FROM   dbo.PO_PRL prl
        WHERE  prl.DIVCODE = @DivCode
          AND  (@DepCode IS NULL OR prl.DEPCODE = @DepCode)
          AND  ISNULL(prl.prstatus, ' ') NOT IN ('O', 'C')
          AND  ISNULL(prl.AmdFlg, '') <> 'Y'
        GROUP BY prl.ITEMCODE
    ),
    PendingPo AS
    (
        SELECT
            o.ITEMCODE,
            SUM(ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) AS TotalPendingPo
        FROM   dbo.PO_ORDL o
        INNER JOIN dbo.PO_ORDH h
            ON  h.DIVCODE = o.DIVCODE
            AND h.PORDNO  = o.PORDNO
            AND h.PORDDT  = o.PORDDT
            AND h.POGRP   = o.POGRP
        WHERE  o.DIVCODE = @DivCode
          AND  ISNULL(h.CANFLG, 'N') = 'N'
          AND  (ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) > 0
        GROUP BY o.ITEMCODE
    )
    SELECT
        i.ITEMCODE                                  AS ItemCode,
        i.ITEMNAME                                  AS ItemName,
        i.UOM                                       AS Uom,
        i.CURSTK                                    AS CurrentStock,
        ISNULL(i.MINLEVEL, 0)                       AS MinLevel,
        ISNULL(pp.TotalPendingPr, 0)                AS PendingPrQty,
        ISNULL(po.TotalPendingPo, 0)                AS PendingPoQty,
        ISNULL(i.DRAWNO, '')                        AS DrawNo,
        ISNULL(i.CATLNO, '')                        AS CatNo
    FROM   dbo.in_item i
    LEFT JOIN PendingPr pp ON pp.ITEMCODE = i.ITEMCODE
    LEFT JOIN PendingPo po ON po.ITEMCODE = i.ITEMCODE
    WHERE  i.IsItemActive = 1
      AND  (i.ITEMCODE LIKE @Term OR i.ITEMNAME LIKE @Term)
      -- (@ItemGroup filter removed — ITEMGROUP column not in in_item)
    ORDER BY
        CASE WHEN i.ITEMCODE LIKE @Term THEN 0 ELSE 1 END,
        i.ITEMNAME;
END;
GO
