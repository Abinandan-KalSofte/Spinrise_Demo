CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_PreChecks
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Returns one row per check: CheckName, Passed (1/0), ErrorMessage
    SELECT 'PA-1: Supplier Master'   AS CheckName,
           CASE WHEN EXISTS (SELECT 1 FROM dbo.fa_slmas)           THEN 1 ELSE 0 END AS Passed,
           'Supplier master (fa_slmas) is empty.'                   AS ErrorMessage
    UNION ALL
    SELECT 'PA-2: Area Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_area)            THEN 1 ELSE 0 END,
           'Area master (rm_area) is empty.'
    UNION ALL
    SELECT 'PA-3: Variety Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_var)             THEN 1 ELSE 0 END,
           'Variety master (rm_var) is empty.'
    UNION ALL
    SELECT 'PA-4: Pay Mode Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_pmode)           THEN 1 ELSE 0 END,
           'Payment mode master (rm_pmode) is empty.'
    UNION ALL
    SELECT 'PA-5: Rate Unit Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_rateunit)        THEN 1 ELSE 0 END,
           'Rate unit master (rm_rateunit) is empty.'
    UNION ALL
    SELECT 'PA-6: Currency Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.fa_currency)        THEN 1 ELSE 0 END,
           'Currency master (fa_currency) is empty.'
    UNION ALL
    SELECT 'PA-7: PO Parameters',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.RM_PARAM WHERE divcode = @DivCode) THEN 1 ELSE 0 END,
           'PO parameters (RM_PARAM) not configured for this division.'
    UNION ALL
    SELECT 'PA-8: PO Configuration',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.PO_Para WHERE Divcode = @DivCode)  THEN 1 ELSE 0 END,
           'PO configuration (PO_Para) not set up for this division.';
END;
