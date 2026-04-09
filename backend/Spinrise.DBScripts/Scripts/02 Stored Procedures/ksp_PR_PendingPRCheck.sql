CREATE OR ALTER PROCEDURE dbo.ksp_PR_PendingPRCheck
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Find the most recent open PR for this item that has no PO raised
    SELECT TOP 1
        CAST(1 AS BIT)  AS HasPendingPR,
        H.prno          AS PendingPrNo,
        H.prdate        AS PendingPrDate
    FROM dbo.po_prh H
    JOIN dbo.po_prl L
        ON  H.divcode = L.divcode
        AND H.prno    = L.prno
        AND H.prdate  = L.prdate
    WHERE H.divcode  = @DivCode
      AND L.itemcode = @ItemCode
      AND ISNULL(H.cancelflag, '') <> 'Y'
      AND ISNULL(H.APPFLG,     '') <> 'Y'
      AND ISNULL(L.AmdFlg,     '') <> 'Y'
      -- No PO raised: no po_ordl references this PR line
      AND NOT EXISTS (
          SELECT 1
          FROM   dbo.po_ordl OL
          JOIN   dbo.po_ordh OH
              ON  OL.DIVCODE = OH.DIVCODE
              AND OL.PORDNO  = OH.PORDNO
              AND OL.PORDDT  = OH.PORDDT
              AND OL.POGRP   = OH.POGRP
          WHERE  OL.DIVCODE  = @DivCode
            AND  OL.ITEMCODE = @ItemCode
            AND  OL.PRNO     = H.prno
            AND  ISNULL(OH.CANFLG, '') <> 'Y'
      )
    ORDER BY H.prdate DESC, H.prno DESC;

    IF @@ROWCOUNT = 0
        SELECT
            CAST(0 AS BIT) AS HasPendingPR,
            NULL           AS PendingPrNo,
            NULL           AS PendingPrDate;
END;
