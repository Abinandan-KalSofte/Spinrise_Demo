CREATE OR ALTER PROCEDURE dbo.usp_PR_PreChecks
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ItemExists BIT = 0,
            @DeptExists BIT = 0,
            @DocExists BIT = 0;

    IF EXISTS (SELECT 1 FROM dbo.in_item WHERE DivCode = @DivCode AND IsActive = 1)
        SET @ItemExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.in_dep WHERE DivCode = @DivCode)
        SET @DeptExists = 1;

    IF EXISTS (SELECT 1 FROM dbo.po_doc_para WHERE DivCode = @DivCode AND TC = 'PURCHASE REQUISITION')
        SET @DocExists = 1;

    SELECT
        @ItemExists AS ItemMasterExists,
        @DeptExists AS DepartmentExists,
        @DocExists AS DocNumberConfigured;
END;
