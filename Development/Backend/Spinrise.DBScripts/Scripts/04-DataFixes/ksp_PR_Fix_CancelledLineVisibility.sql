-- ============================================================
-- DATA FIX: Restore AmdFlg on lines of cancelled PRs
-- ============================================================
-- PROBLEM:
--   Old ksp_PR_Delete incorrectly set AmdFlg='Y' on all lines
--   when cancelling a PR. ksp_PR_GetById filters out AmdFlg='Y'
--   rows, so cancelled PRs showed zero line items.
--
-- FIX:
--   For cancelled PRs, reset AmdFlg to NULL on lines that have
--   no active (non-cancelled) version in the same PR.
--   For PRs that were modified THEN cancelled, this restores ALL
--   lines (including old amendment versions), which is acceptable
--   for a read-only cancelled record.
--
-- RUN: Once in SSMS against SpinRiseSaranya, after deploying
--      the updated ksp_PR_Delete SP.
-- ============================================================

-- Step 1: Preview what will be restored
SELECT
    l.divcode,
    l.prno,
    h.prdate,
    COUNT(*) AS LineCount
FROM dbo.po_prl l
INNER JOIN dbo.po_prh h
    ON  h.divcode = l.divcode
    AND h.prno    = l.prno
WHERE ISNULL(h.cancelflag, '') = 'Y'
  AND ISNULL(l.AmdFlg, '') = 'Y'
GROUP BY l.divcode, l.prno, h.prdate
ORDER BY l.divcode, l.prno;

-- ============================================================
-- Step 2: Apply fix (uncomment after reviewing Step 1 output)
-- ============================================================
/*
UPDATE l
SET    l.AmdFlg = NULL
FROM   dbo.po_prl l
INNER JOIN dbo.po_prh h
    ON  h.divcode = l.divcode
    AND h.prno    = l.prno
WHERE  ISNULL(h.cancelflag, '') = 'Y'
  AND  ISNULL(l.AmdFlg, '') = 'Y';

PRINT 'Rows updated: ' + CAST(@@ROWCOUNT AS VARCHAR);
*/
