-- Delete an arrival. Blocked when RM_LOT rows exist for this ARRNO (IST-6 confirmed guard).
-- Reverses RM_CONT balances within the same transaction before deleting.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_Delete
    @DivCode    VARCHAR(2),
    @ArrNo      INT,
    @ArrDate    DATETIME,
    @PreparedBy VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    -- Guard: block if downstream Lot Bale entry exists (RM_LOT with lottype='A')
    IF EXISTS (
        SELECT 1 FROM dbo.RM_LOT
        WHERE  arrno    = @ArrNo
          AND  Divcode  = @DivCode
          AND  lottype  = 'A'
    )
    BEGIN
        SELECT 0 AS RowsDeleted, 'LOT_EXISTS' AS Status;
        RETURN;
    END;

    BEGIN TRANSACTION;

    BEGIN TRY
        -- Reverse RM_CONT PackWise balances
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RECQTY = ISNULL(rc.RECQTY, 0) - a.QUANTITY
        FROM   dbo.RM_CONT rc
        JOIN   dbo.RM_ARRIVAL a ON a.CONTNO = rc.CONTNO
                                AND a.CONTDT = rc.CONTDT
                                AND a.VARCODE= rc.VARCODE
        WHERE  a.ARRNO   = @ArrNo
          AND  a.ARRDATE = @ArrDate
          AND  a.DIVCODE = @DivCode
          AND  a.Arrivaltype = 'P';

        -- Reverse RM_CONT KGSWise balances
        UPDATE rc WITH (UPDLOCK)
        SET    rc.RCDKGS = ISNULL(rc.RCDKGS, 0) - a.NETWT
        FROM   dbo.RM_CONT rc
        JOIN   dbo.RM_ARRIVAL a ON a.CONTNO = rc.CONTNO
                                AND a.CONTDT = rc.CONTDT
                                AND a.VARCODE= rc.VARCODE
        WHERE  a.ARRNO   = @ArrNo
          AND  a.ARRDATE = @ArrDate
          AND  a.DIVCODE = @DivCode
          AND  a.Arrivaltype = 'K';

        -- Unmark SLOTNO receipts (restore RECFLG to 'N')
        UPDATE cs
        SET    cs.RECFLG = 'N'
        FROM   dbo.RM_CONT_SLOTNO cs
        JOIN   dbo.RM_ARRIVAL a ON a.CONTNO = cs.CONTNO
                                AND a.CONTDT = cs.CONTDT
                                AND a.DIVCODE= cs.DIVCODE
                                AND cs.SLOTNO= a.PLOTNO
        WHERE  a.ARRNO   = @ArrNo
          AND  a.ARRDATE = @ArrDate
          AND  a.DIVCODE = @DivCode;

        -- Audit log
        DECLARE @ContNo VARCHAR(10), @ContDt DATETIME;
        SELECT TOP 1 @ContNo = CONTNO, @ContDt = CONTDT
        FROM   dbo.RM_ARRIVAL
        WHERE  ARRNO = @ArrNo AND ARRDATE = @ArrDate AND DIVCODE = @DivCode;

        INSERT INTO dbo.RM_Trans_Log
            (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId)
        VALUES
            (@ContNo, @ContDt, @DivCode, 'Delete', GETDATE(), @PreparedBy);

        -- Delete arrival rows
        DELETE FROM dbo.RM_ARRIVAL
        WHERE  ARRNO   = @ArrNo
          AND  ARRDATE = @ArrDate
          AND  DIVCODE = @DivCode;

        DECLARE @Deleted INT = @@ROWCOUNT;

        COMMIT TRANSACTION;
        SELECT @Deleted AS RowsDeleted, 'SUCCESS' AS Status;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
