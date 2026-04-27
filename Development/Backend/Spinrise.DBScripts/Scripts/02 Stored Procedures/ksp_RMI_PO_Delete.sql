CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_Delete
    @ContNo          VARCHAR(10),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @DeleteReasonCode VARCHAR(4),
    @DeletedBy       VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Step 0: Block if first approval has commenced
    IF EXISTS (
        SELECT 1 FROM dbo.RM_CONT
        WHERE  CONTNO = @ContNo AND CONTDT = @ContDt AND DIVCODE = @DivCode
          AND  ISNULL(FIRST_APPFLG, 'N') = 'Y'
    )
    BEGIN
        SELECT -1 AS Result, 'PO cannot be deleted after approval has commenced.' AS Message;
        RETURN;
    END

    -- Step 1: Block if any arrival exists
    IF EXISTS (
        SELECT 1 FROM dbo.RM_ARRIVAL
        WHERE  CONTNO = @ContNo AND CONTDT = @ContDt AND DIVCODE = @DivCode
    )
    BEGIN
        SELECT -2 AS Result, 'Arrival started, Deletion not Allowed' AS Message;
        RETURN;
    END

    -- Step 2: Validate delete reason exists
    IF NOT EXISTS (SELECT 1 FROM dbo.RM_DelReason WHERE Code = @DeleteReasonCode)
    BEGIN
        SELECT -3 AS Result, 'Invalid delete reason code.' AS Message;
        RETURN;
    END

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Step 3: Audit log (write DelReason to RM_Trans_Log — IST-8 confirmed)
        INSERT INTO dbo.RM_Trans_Log
        (Divcode, Trans_Name, Trans_Mod, Trans_UserId, Trans_date, ContNo, Contdt, DelReason)
        SELECT
            @DivCode,
            'RMI Purchase Order',
            'DELETE',
            @DeletedBy,
            GETDATE(),
            TRY_CAST(@ContNo AS NUMERIC(10,0)),
            @ContDt,
            @DeleteReasonCode
        WHERE TRY_CAST(@ContNo AS NUMERIC(10,0)) IS NOT NULL;

        -- Step 4: Delete cascade
        DELETE FROM dbo.RM_CONT_SLOTNO
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;

        DELETE FROM dbo.rm_delsched
        WHERE  contno   = @ContNo
          AND  CONTDATE = @ContDt
          AND  Divcode  = @DivCode;

        DELETE FROM dbo.RM_ContDiscntRate
        WHERE  ContNo  = TRY_CAST(@ContNo AS NUMERIC)
          AND  Contdt  = @ContDt
          AND  Divcode = @DivCode;

        DELETE FROM dbo.RM_CONT
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;

        COMMIT TRANSACTION;

        SELECT 1 AS Result, 'Record(s) Deleted' AS Message;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        SELECT -99 AS Result, ERROR_MESSAGE() AS Message;
    END CATCH
END;
