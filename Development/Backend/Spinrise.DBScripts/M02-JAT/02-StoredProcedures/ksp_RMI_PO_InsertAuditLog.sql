CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertAuditLog
    @ContNo           NUMERIC(9,0),
    @ContDt           DATETIME,
    @DivCode          VARCHAR(2),
    @Mode             VARCHAR(10),   -- 'ADD' / 'MODIFY' / 'CANCEL'
    @UserId           VARCHAR(50),
    @DeleteReasonCode VARCHAR(4)   = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_Trans_Log
        (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId, DelReason)
    VALUES
        (@ContNo, @ContDt, @DivCode, @Mode, GETDATE(), @UserId,
         CASE WHEN @Mode = 'CANCEL' THEN @DeleteReasonCode ELSE NULL END);
END;
