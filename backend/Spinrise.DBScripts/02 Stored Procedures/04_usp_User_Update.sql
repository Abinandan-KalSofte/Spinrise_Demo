IF OBJECT_ID('dbo.usp_User_Update', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Update;
GO

CREATE PROCEDURE dbo.usp_User_Update
    @Id INT,
    @Name NVARCHAR(100),
    @Email NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.Users
    SET Name = @Name,
        Email = @Email
    WHERE Id = @Id;

    SELECT @@ROWCOUNT;
END
GO
