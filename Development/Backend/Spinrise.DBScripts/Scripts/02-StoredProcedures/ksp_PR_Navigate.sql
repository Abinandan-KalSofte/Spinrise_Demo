CREATE OR ALTER PROCEDURE dbo.ksp_PR_Navigate
    @DivCode      VARCHAR(2),
    @Direction    VARCHAR(5),           -- 'FIRST' | 'PREV' | 'NEXT' | 'LAST'
    @CurrentPrNo  NUMERIC(6,0) = NULL,
    @YFDate       DATETIME,
    @YLDate       DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    -- Returns PrNo + PrDate of the target record.
    -- Returns 0 rows when already at boundary (frontend disables nav button).
    -- Navigation is by PrNo sequence within the financial year.
    -- Cancelled PRs are excluded from navigation.

    IF @Direction = 'FIRST'
        SELECT TOP 1 h.prno AS PrNo, h.prdate AS PrDate
        FROM dbo.po_prh h
        WHERE h.divcode = @DivCode
          AND h.prdate >= @YFDate
          AND h.prdate <  DATEADD(DAY, 1, @YLDate)
          AND ISNULL(h.cancelflag, '') <> 'Y'
        ORDER BY h.prno ASC;

    ELSE IF @Direction = 'LAST'
        SELECT TOP 1 h.prno AS PrNo, h.prdate AS PrDate
        FROM dbo.po_prh h
        WHERE h.divcode = @DivCode
          AND h.prdate >= @YFDate
          AND h.prdate <  DATEADD(DAY, 1, @YLDate)
          AND ISNULL(h.cancelflag, '') <> 'Y'
        ORDER BY h.prno DESC;

    ELSE IF @Direction = 'NEXT'
        SELECT TOP 1 h.prno AS PrNo, h.prdate AS PrDate
        FROM dbo.po_prh h
        WHERE h.divcode = @DivCode
          AND h.prdate >= @YFDate
          AND h.prdate <  DATEADD(DAY, 1, @YLDate)
          AND ISNULL(h.cancelflag, '') <> 'Y'
          AND h.prno > @CurrentPrNo
        ORDER BY h.prno ASC;

    ELSE IF @Direction = 'PREV'
        SELECT TOP 1 h.prno AS PrNo, h.prdate AS PrDate
        FROM dbo.po_prh h
        WHERE h.divcode = @DivCode
          AND h.prdate >= @YFDate
          AND h.prdate <  DATEADD(DAY, 1, @YLDate)
          AND ISNULL(h.cancelflag, '') <> 'Y'
          AND h.prno < @CurrentPrNo
        ORDER BY h.prno DESC;
END;
GO
