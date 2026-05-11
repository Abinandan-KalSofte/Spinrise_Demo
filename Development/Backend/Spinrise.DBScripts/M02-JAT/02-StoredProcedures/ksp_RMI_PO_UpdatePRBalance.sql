CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdatePRBalance
    @DivCode   VARCHAR(2),
    @PrNo      NUMERIC(18,0),
    @PrDate    DATETIME,
    @PrSno     NUMERIC(10,0),
    @QtyOrd    DECIMAL(10,2),
    @QtyOrdKG  NUMERIC(18,3)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.Rm_PRL WITH (UPDLOCK)
    SET    qtyord   = ISNULL(qtyord,   0) + @QtyOrd,
           qtyordKG = ISNULL(qtyordKG, 0) + @QtyOrdKG
    WHERE  divcode = @DivCode
      AND  PRNO    = @PrNo
      AND  PRDATE  = @PrDate
      AND  PrSno   = @PrSno;
END;
GO
