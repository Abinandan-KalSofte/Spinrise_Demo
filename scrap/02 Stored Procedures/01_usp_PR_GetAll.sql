CREATE OR ALTER PROCEDURE dbo.usp_PR_GetAll
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20) = NULL,
    @FromDate DATE = NULL,
    @ToDate DATE = NULL,
    @DepCode VARCHAR(10) = NULL,
    @Status VARCHAR(20) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        COUNT(l.Id) AS LineCount
    FROM dbo.po_prh h
    LEFT JOIN dbo.po_prl l
        ON l.DivCode = h.DivCode
        AND l.PrNo = h.PrNo
        AND l.IsDeleted = 0
    WHERE h.DivCode = @DivCode
      AND h.IsDeleted = 0
      AND (@PrNo IS NULL OR h.PrNo = @PrNo)
      AND (@FromDate IS NULL OR h.PrDate >= @FromDate)
      AND (@ToDate IS NULL OR h.PrDate <= @ToDate)
      AND (@DepCode IS NULL OR h.DepCode = @DepCode)
      AND (@Status IS NULL OR h.PrStatus = @Status)
    GROUP BY
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt
    ORDER BY h.PrDate DESC, h.PrNo DESC;
END;
