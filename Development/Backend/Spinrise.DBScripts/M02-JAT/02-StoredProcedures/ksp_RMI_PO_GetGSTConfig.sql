CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetGSTConfig
    @SupplierCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- supptype: 'F' = foreign supplier (no GST), else domestic
    -- Frontend computes IGSTFLG by comparing supplier state vs company state
    SELECT
        ISNULL(s.gststatecode, '') AS GstStateCode,
        ISNULL(s.GSTINNO,      '') AS GstInNo,
        ISNULL(s.SuppType,     '') AS SuppType,
        ISNULL(s.state_code,   '') AS StateCode
    FROM   dbo.fa_slmas s
    WHERE  s.slcode = @SupplierCode;
END;
