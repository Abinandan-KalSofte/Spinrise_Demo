CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GenerateNumber
    @DivCode          VARCHAR(2),
    @FYStart          DATE,
    @FYEnd            DATE,
    @CentralizedOrder VARCHAR(1) = 'N'
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNo   NUMERIC(5,0);
    DECLARE @MaxNo    NUMERIC(5,0);
    DECLARE @MaxStr   VARCHAR(10);

    IF ISNULL(@CentralizedOrder, 'N') = 'Y'
    BEGIN
        -- Global sequence across all divisions (prefix 'C')
        SELECT @MaxStr = MAX(
            CASE WHEN ISNUMERIC(REPLACE(REPLACE(CONTNO,'C',''),'-','')) = 1
                 THEN REPLACE(REPLACE(CONTNO,'C',''),'-','')
                 ELSE '0' END)
        FROM dbo.RM_CONT WITH (UPDLOCK, HOLDLOCK)
        WHERE CONTDT >= @FYStart
          AND CONTDT <= @FYEnd;
    END
    ELSE
    BEGIN
        -- Per-division sequence
        SELECT @MaxStr = MAX(
            CASE WHEN ISNUMERIC(CONTNO) = 1 THEN CONTNO ELSE '0' END)
        FROM dbo.RM_CONT WITH (UPDLOCK, HOLDLOCK)
        WHERE DIVCODE = @DivCode
          AND CONTDT  >= @FYStart
          AND CONTDT  <= @FYEnd;
    END

    SET @NextNo = ISNULL(TRY_CAST(@MaxStr AS NUMERIC(5,0)), 0) + 1;

    SELECT @NextNo AS NextContNo;
END;
