CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDiscountRate
    @ContNo  VARCHAR(10),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2),
    @SupCd   VARCHAR(8),
    @VarCode VARCHAR(10),
    @Docno   NUMERIC(9,0),
    @DocSno  NUMERIC(3,0),
    @DType   VARCHAR(4),
    @DRate   NUMERIC(9,2) = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_ContDiscntRate
    (Divcode, ContNo, Contdt, Docno, Docdate, DocSno, SUPCD, Varcode, DType, DRate)
    VALUES
    (@DivCode, CAST(@ContNo AS NUMERIC), @ContDt, @Docno, @ContDt, @DocSno, @SupCd, @VarCode, @DType, @DRate);
END;
