CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDiscountRate
    @ContNo   NUMERIC(9,0),
    @ContDt   DATETIME,
    @VarCode  VARCHAR(10),
    @SupCd    VARCHAR(10),
    @DiscType VARCHAR(20),
    @DiscRate NUMERIC(8,2) = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_ContDiscntRate
        (ContNo, Docdate, Varcode, SUPCD, DType, DRate)
    VALUES
        (@ContNo, @ContDt, @VarCode, @SupCd, @DiscType, @DiscRate);
END;
