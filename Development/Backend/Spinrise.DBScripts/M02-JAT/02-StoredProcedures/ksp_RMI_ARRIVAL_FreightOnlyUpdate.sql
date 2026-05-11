-- Limited modify: only FREIGHT and LORRYNOS can be changed after lot assignment.
-- Active when rm_arrival_freight_only_mod_flg=Y (Pallavaa group).
-- Writes a separate RM_Trans_Log entry with Trans_Mod='ArrivalFreight'.
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_ARRIVAL_FreightOnlyUpdate
    @DivCode    VARCHAR(2),
    @ArrNo      INT,
    @ArrDate    DATETIME,
    @Freight    DECIMAL(9,2),
    @LorryNos   VARCHAR(50)  = NULL,
    @PreparedBy VARCHAR(50)  = NULL
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRANSACTION;

    BEGIN TRY
        UPDATE dbo.RM_ARRIVAL
        SET    FREIGHT  = @Freight,
               LORRYNOS = @LorryNos
        WHERE  ARRNO   = @ArrNo
          AND  ARRDATE = @ArrDate
          AND  DIVCODE = @DivCode;

        -- Audit: use first row's CONTNO/CONTDT for the log
        DECLARE @ContNo VARCHAR(10), @ContDt DATETIME;
        SELECT TOP 1 @ContNo = CONTNO, @ContDt = CONTDT
        FROM   dbo.RM_ARRIVAL
        WHERE  ARRNO = @ArrNo AND ARRDATE = @ArrDate AND DIVCODE = @DivCode;

        INSERT INTO dbo.RM_Trans_Log
            (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId)
        VALUES
            (@ContNo, @ContDt, @DivCode, 'ArrivalFreight', GETDATE(), @PreparedBy);

        COMMIT TRANSACTION;
        SELECT @@ROWCOUNT AS RowsAffected, 'SUCCESS' AS Status;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
GO
