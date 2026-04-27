CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetGSTConfig
    @SupplierCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        s.slcode                             AS SupplierCode,
        s.slname                             AS SupplierName,
        ISNULL(s.gststatecode, '0')          AS GSTStateCode,
        ISNULL(s.gstinno,      '0')          AS GSTINNO,
        ISNULL(s.supptype,     'R')          AS SuppType,
        -- Foreign supplier: supptype = 'F'; same/different state determines CGST vs IGST
        CASE
            WHEN ISNULL(s.supptype, 'R') = 'F' THEN 'FOREIGN'
            WHEN ISNULL(s.gststatecode,'0') = '0' THEN 'UNREGISTERED'
            ELSE 'REGISTERED'
        END                                  AS SupplierCategory
    FROM dbo.fa_slmas s
    WHERE s.slcode = @SupplierCode;
END;
