CREATE OR ALTER PROCEDURE dbo.ksp_PR_Delete
    @DivCode      VARCHAR(2),
    @PrNo         NUMERIC(6,0),
    @PrDate       DATETIME,
    @DeleteReason VARCHAR(250) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Guard: approval lock (defence-in-depth — service layer also checks)
    IF EXISTS (
        SELECT 1 FROM dbo.po_prl
        WHERE divcode = @DivCode AND prno = @PrNo AND prdate = @PrDate
          AND (ISNULL(FirstApp,'')  = 'Y'
            OR ISNULL(SecondApp,'') = 'Y'
            OR ISNULL(ThirdApp,'')  = 'Y')
    )
    BEGIN
        RAISERROR('This PR has been approved and cannot be deleted.', 16, 1);
        RETURN;
    END;

    IF ISNULL((SELECT APPFLG FROM dbo.po_prh WHERE divcode = @DivCode AND prno = @PrNo AND prdate = @PrDate), '') = 'Y'
    BEGIN
        RAISERROR('This PR has been approved and cannot be deleted.', 16, 1);
        RETURN;
    END;

    -- Guard: enquiry link (defence-in-depth — service layer also checks)
    IF EXISTS (
        SELECT 1 FROM dbo.po_enql
        WHERE divcode = @DivCode AND prno = @PrNo
    )
    BEGIN
        RAISERROR('This PR is linked to an enquiry and cannot be deleted.', 16, 1);
        RETURN;
    END;

    -- Physical delete: lines first (FK), then header — scoped to the exact prdate
    DELETE FROM dbo.po_prl
    WHERE divcode = @DivCode AND prno = @PrNo AND prdate = @PrDate;

    DELETE FROM dbo.po_prh
    WHERE divcode = @DivCode AND prno = @PrNo AND prdate = @PrDate;

    SELECT @@ROWCOUNT;
END;
