CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetLastRecord
    @DivCode  VARCHAR(2),
    @YFDate   DATETIME,
    @YLDate   DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    -- Returns PrNo + PrDate of the highest-numbered non-cancelled PR in the FY.
    -- Frontend then calls ksp_PR_GetById with the returned PrNo.
    SELECT TOP 1
        h.prno    AS PrNo,
        h.prdate  AS PrDate
    FROM dbo.po_prh h
    WHERE h.divcode = @DivCode
      AND h.prdate >= @YFDate
      AND h.prdate <  DATEADD(DAY, 1, @YLDate)
      AND ISNULL(h.cancelflag, '') <> 'Y'
    ORDER BY h.prno DESC;
END;
GO
