IF OBJECT_ID('dbo.usp_User_Delete', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Delete;
GO

CREATE PROCEDURE dbo.usp_User_Delete
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM dbo.Users
    WHERE Id = @Id;

    SELECT @@ROWCOUNT;
END
GO
