-- Soft-cancel a PO: sets CancelFlg = 'Y' and writes audit log.
-- Hard delete is blocked because child tables (RM_DELSCHED, RM_ContDiscntRate) preserve history.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_Delete
    @ContNo           NUMERIC(9,0),
    @ContDt           DATETIME,
    @DivCode          VARCHAR(2),
    @DeleteReasonCode VARCHAR(4),
    @DeletedBy        VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Block if first approval already done
    IF EXISTS (
        SELECT 1 FROM dbo.RM_CONT
        WHERE  CONTNO  = @ContNo
          AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
          AND  DIVCODE = @DivCode
          AND  ISNULL(FIRST_APPFLG, '') = 'Y'
    )
    BEGIN
        RAISERROR('Cannot cancel: approval has commenced for this Purchase Order.', 16, 1);
        RETURN;
    END;

    -- Block if any goods arrival exists
    IF EXISTS (
        SELECT 1 FROM dbo.RM_Arrival
        WHERE  CONTNO  = @ContNo
          AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
          AND  DIVCODE = @DivCode
    )
    BEGIN
        RAISERROR('Cannot cancel: goods arrival records exist for this Purchase Order.', 16, 1);
        RETURN;
    END;

    BEGIN TRANSACTION;

    -- Write audit log with cancel reason
    INSERT INTO dbo.RM_Trans_Log
        (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId, DelReason)
    VALUES
        (@ContNo, @ContDt, @DivCode, 'CANCEL', GETDATE(), @DeletedBy, @DeleteReasonCode);

    -- Soft cancel: set CancelFlg on all variety rows of this PO
    UPDATE dbo.RM_CONT
    SET    CancelFlg = 'Y'
    WHERE  CONTNO  = @ContNo
      AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
      AND  DIVCODE = @DivCode;

    COMMIT TRANSACTION;

    SELECT @@ROWCOUNT AS RowsAffected;
END;
