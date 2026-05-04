CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdateApproval
    @ContNo     NUMERIC(9,0),
    @ContDt     DATETIME,
    @DivCode    VARCHAR(2),
    @Level      TINYINT,       -- 1, 2, or 3
    @Action     VARCHAR(10),   -- 'APPROVE' or 'REJECT'
    @ApproverId VARCHAR(50),
    @Remarks    NVARCHAR(500) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION;

    IF @Action = 'APPROVE'
    BEGIN
        UPDATE dbo.RM_CONT
        SET
            FIRST_APPFLG = CASE WHEN @Level = 1 THEN 'Y' ELSE FIRST_APPFLG END,
            fappflg      = CASE WHEN @Level = 2 THEN 'Y' ELSE fappflg      END,
            Appflg       = CASE WHEN @Level = 3 THEN 'Y' ELSE Appflg       END
        WHERE  CONTNO  = @ContNo
          AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
          AND  DIVCODE = @DivCode;
    END
    ELSE IF @Action = 'REJECT'
    BEGIN
        -- Reset the target level and all levels above it
        UPDATE dbo.RM_CONT
        SET
            FIRST_APPFLG = CASE WHEN @Level <= 1 THEN '' ELSE FIRST_APPFLG END,
            fappflg      = CASE WHEN @Level <= 2 THEN '' ELSE fappflg      END,
            Appflg       = CASE WHEN @Level <= 3 THEN '' ELSE Appflg       END
        WHERE  CONTNO  = @ContNo
          AND  CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
          AND  DIVCODE = @DivCode;
    END;

    -- Write approval action to audit log
    INSERT INTO dbo.RM_Trans_Log
        (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId, DelReason)
    VALUES
        (@ContNo, @ContDt, @DivCode,
         'APPROVE-L' + CAST(@Level AS VARCHAR) + '-' + @Action,
         GETDATE(), @ApproverId, NULL);

    COMMIT TRANSACTION;
END;
