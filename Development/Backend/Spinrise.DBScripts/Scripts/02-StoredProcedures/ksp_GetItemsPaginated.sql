CREATE OR ALTER PROCEDURE dbo.ksp_GetItemsPaginated
    @DivCode    VARCHAR(2),
    @SearchTerm VARCHAR(100) = NULL,
    @DepCode    VARCHAR(5)   = NULL,
    @Page       INT          = 1,
    @PageSize   INT          = 50
AS
BEGIN
    SET NOCOUNT ON;
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DECLARE @Offset INT = (@Page - 1) * @PageSize;

    -- Normalise search: empty/null → match all
    DECLARE @Term VARCHAR(102) =
        CASE
            WHEN LEN(LTRIM(RTRIM(ISNULL(@SearchTerm, '')))) >= 1
            THEN LTRIM(RTRIM(@SearchTerm)) + '%'
            ELSE '%'
        END;

    -- Pending PR qty scoped to dept when provided
    WITH PendingPr AS
    (
        SELECT prl.ITEMCODE, SUM(ISNULL(prl.QTYREQD, 0)) AS TotalPendingPr
        FROM   dbo.PO_PRL prl
        WHERE  prl.DIVCODE = @DivCode
          AND  (@DepCode IS NULL OR prl.DEPCODE = @DepCode)
          AND  ISNULL(prl.prstatus, ' ') NOT IN ('O', 'C')
          AND  ISNULL(prl.AmdFlg, '') <> 'Y'
        GROUP BY prl.ITEMCODE
    ),
    PendingPo AS
    (
        SELECT o.ITEMCODE, SUM(ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) AS TotalPendingPo
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

    -- Result 1: total count (matches ksp_PR_GetPaginated pattern)
    SELECT COUNT(*) AS TotalCount
    FROM   dbo.in_item i
    WHERE  i.IsItemActive = 1
      AND  (i.ITEMCODE LIKE @Term OR i.ITEMNAME LIKE @Term);

    -- Result 2: paged rows
    WITH PendingPr AS
    (
        SELECT prl.ITEMCODE, SUM(ISNULL(prl.QTYREQD, 0)) AS TotalPendingPr
        FROM   dbo.PO_PRL prl
        WHERE  prl.DIVCODE = @DivCode
          AND  (@DepCode IS NULL OR prl.DEPCODE = @DepCode)
          AND  ISNULL(prl.prstatus, ' ') NOT IN ('O', 'C')
          AND  ISNULL(prl.AmdFlg, '') <> 'Y'
        GROUP BY prl.ITEMCODE
    ),
    PendingPo AS
    (
        SELECT o.ITEMCODE, SUM(ISNULL(o.ORDQTY, 0) - ISNULL(o.RCVDQTY, 0)) AS TotalPendingPo
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
        i.ITEMCODE                       AS ItemCode,
        i.ITEMNAME                       AS ItemName,
        i.UOM                            AS Uom,
        i.CURSTK                         AS CurrentStock,
        ISNULL(i.MINLEVEL, 0)            AS MinLevel,
        ISNULL(pp.TotalPendingPr, 0)     AS PendingPrQty,
        ISNULL(po.TotalPendingPo, 0)     AS PendingPoQty,
        ISNULL(i.DRAWNO, '')             AS DrawNo,
        ISNULL(i.CATLNO, '')             AS CatNo
    FROM   dbo.in_item i
    LEFT JOIN PendingPr pp ON pp.ITEMCODE = i.ITEMCODE
    LEFT JOIN PendingPo po ON po.ITEMCODE = i.ITEMCODE
    WHERE  i.IsItemActive = 1
      AND  (i.ITEMCODE LIKE @Term OR i.ITEMNAME LIKE @Term)
    ORDER BY
        CASE WHEN i.ITEMCODE LIKE @Term THEN 0 ELSE 1 END,
        i.ITEMNAME
    OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;
END;
GO
