-- Atomic PO number generation using locked sequence table (fixes CD-2 race condition)
-- Table: rm_cont_number (divcode, prefix, fyear, lastno)
-- Create table if not present (run once):
--   IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'rm_cont_number')
--   CREATE TABLE dbo.rm_cont_number (divcode VARCHAR(2), prefix CHAR(1), fyear INT, lastno INT,
--     CONSTRAINT PK_rm_cont_number PRIMARY KEY (divcode, prefix, fyear));

CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GenerateNumber
    @DivCode  VARCHAR(2),
    @Prefix   CHAR(1)    = 'P',
    @FYear    INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NewNo INT;

    BEGIN TRANSACTION;
        -- UPDLOCK + HOLDLOCK: only one caller can increment at a time
        UPDATE dbo.rm_cont_number WITH (UPDLOCK, HOLDLOCK)
        SET    lastno = lastno + 1
        WHERE  divcode = @DivCode
          AND  prefix  = @Prefix
          AND  fyear   = @FYear;

        IF @@ROWCOUNT = 0
        BEGIN
            INSERT INTO dbo.rm_cont_number (divcode, prefix, fyear, lastno)
            VALUES (@DivCode, @Prefix, @FYear, 1);
        END;

        SELECT @NewNo = lastno
        FROM   dbo.rm_cont_number WITH (NOLOCK)
        WHERE  divcode = @DivCode
          AND  prefix  = @Prefix
          AND  fyear   = @FYear;
    COMMIT TRANSACTION;

    SELECT @NewNo AS NewNumber;
END;
