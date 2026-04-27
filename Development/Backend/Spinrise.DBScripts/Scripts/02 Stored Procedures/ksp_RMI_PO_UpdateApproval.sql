CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdateApproval
    @ContNo    VARCHAR(10),
    @ContDt    DATETIME,
    @DivCode   VARCHAR(2),
    @Level     TINYINT,       -- 1=First, 2=Second, 3=Final
    @Action    VARCHAR(10),   -- 'APPROVE' or 'REJECT'
    @AppUserId VARCHAR(10),
    @AppIPAddr VARCHAR(15)    = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @Action = 'APPROVE'
    BEGIN
        IF @Level = 1
        BEGIN
            UPDATE dbo.RM_CONT
            SET    FIRST_APPFLG    = 'Y',
                   FIRST_APPUSERID = @AppUserId,
                   FIRST_APPIP     = @AppIPAddr,
                   FIRST_APPDATE   = GETDATE()
            WHERE  CONTNO  = @ContNo
              AND  CONTDT  = @ContDt
              AND  DIVCODE = @DivCode;
        END
        ELSE IF @Level = 2
        BEGIN
            UPDATE dbo.RM_CONT
            SET    fappflg   = 'Y',
                   APPUSERID = @AppUserId,
                   APPIP     = @AppIPAddr,
                   APPDATE   = GETDATE()
            WHERE  CONTNO  = @ContNo
              AND  CONTDT  = @ContDt
              AND  DIVCODE = @DivCode;
        END
        ELSE IF @Level = 3
        BEGIN
            UPDATE dbo.RM_CONT
            SET    APPFLG    = 'Y',
                   APPUSERID = @AppUserId,
                   APPIP     = @AppIPAddr,
                   APPDATE   = GETDATE()
            WHERE  CONTNO  = @ContNo
              AND  CONTDT  = @ContDt
              AND  DIVCODE = @DivCode;
        END
    END
    ELSE IF @Action = 'REJECT'
    BEGIN
        -- Reset all approval flags
        UPDATE dbo.RM_CONT
        SET    FIRST_APPFLG    = 'N',
               FIRST_APPUSERID = NULL,
               FIRST_APPDATE   = NULL,
               fappflg         = 'N',
               APPFLG          = 'N',
               APPUSERID       = NULL,
               APPDATE         = NULL
        WHERE  CONTNO  = @ContNo
          AND  CONTDT  = @ContDt
          AND  DIVCODE = @DivCode;
    END

    SELECT @@ROWCOUNT AS AffectedRows;
END;
