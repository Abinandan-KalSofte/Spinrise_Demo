CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdatePRBalance
    @DivCode  VARCHAR(2),
    @PrNo     NUMERIC(6,0),
    @PrDate   DATETIME,
    @PrSNo    NUMERIC(5,0),
    @QtyOrd   NUMERIC(12,3),
    @QtyOrdKG NUMERIC(12,3) = 0
AS
BEGIN
    SET NOCOUNT ON;

    -- CD-3 fix: UPDLOCK prevents concurrent PO saves from over-committing the same PR line
    UPDATE dbo.Rm_PRL WITH (UPDLOCK)
    SET    qtyord   = ISNULL(qtyord,   0) + @QtyOrd,
           qtyordKG = ISNULL(qtyordKG, 0) + @QtyOrdKG
    WHERE  divcode = @DivCode
      AND  prno    = @PrNo
      AND  prdate  = @PrDate
      AND  prsno   = @PrSNo;
END;
