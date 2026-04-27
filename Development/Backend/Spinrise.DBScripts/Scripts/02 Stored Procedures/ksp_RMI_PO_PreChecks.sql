CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_PreChecks
    @DivCode VARCHAR(2),
    @FYStart DATE,
    @FYEnd   DATE
AS
BEGIN
    SET NOCOUNT ON;

    -- PA-1: Financial year validity (RM_LOT equivalent — check if any PO exists or FY is open)
    DECLARE @FYOpen BIT = 1;
    IF NOT EXISTS (SELECT 1 FROM dbo.RM_CONT WHERE DIVCODE = @DivCode AND CONTDT >= @FYStart AND CONTDT <= @FYEnd)
        AND CAST(GETDATE() AS DATE) > @FYEnd
        SET @FYOpen = 0;

    -- PA-2: Supplier master not empty
    DECLARE @SupplierOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.fa_slmas) THEN 1 ELSE 0 END;

    -- PA-3: Area master not empty
    DECLARE @AreaOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_area) THEN 1 ELSE 0 END;

    -- PA-4: Variety master not empty
    DECLARE @VarOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_var) THEN 1 ELSE 0 END;

    -- PA-5: Rate unit master not empty
    DECLARE @RateUnitOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_rateunit) THEN 1 ELSE 0 END;

    -- PA-6: Payment mode master not empty
    DECLARE @PayModeOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_pmode) THEN 1 ELSE 0 END;

    -- PA-7: Delete reason master not empty (warn; not hard stop for add)
    DECLARE @DelReasonOk BIT = CASE WHEN EXISTS (SELECT 1 FROM dbo.RM_DelReason) THEN 1 ELSE 0 END;

    SELECT
        @FYOpen       AS FinYearOpen,
        @SupplierOk   AS SupplierMasterExists,
        @AreaOk       AS AreaMasterExists,
        @VarOk        AS VarietyMasterExists,
        @RateUnitOk   AS RateUnitMasterExists,
        @PayModeOk    AS PayModeMasterExists,
        @DelReasonOk  AS DelReasonMasterExists,
        CASE WHEN @FYOpen=1 AND @SupplierOk=1 AND @AreaOk=1
                  AND @VarOk=1 AND @RateUnitOk=1 AND @PayModeOk=1
             THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT)
        END           AS AllPassed;
END;
