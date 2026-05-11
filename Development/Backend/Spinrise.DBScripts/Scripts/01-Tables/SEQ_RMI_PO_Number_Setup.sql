-- One-time setup: run on SpinRiseSaranya ONCE before deploying SPs
-- Creates atomic sequence for PO number generation (eliminates MAX+1 race condition — FSD CD-2)
IF NOT EXISTS (SELECT 1 FROM sys.sequences WHERE name = 'SEQ_RMI_PO_NUMBER' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE SEQUENCE dbo.SEQ_RMI_PO_NUMBER
        AS DECIMAL(10,0)
        START WITH 1
        INCREMENT BY 1
        MINVALUE 1
        NO MAXVALUE
        NO CYCLE
        NO CACHE;
    PRINT 'Created SEQ_RMI_PO_NUMBER sequence.';
END
ELSE
    PRINT 'SEQ_RMI_PO_NUMBER already exists — skipped.';
