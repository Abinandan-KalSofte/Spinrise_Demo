IF OBJECT_ID('dbo.usp_User_Insert', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Insert;
GO

CREATE PROCEDURE dbo.usp_User_Insert
    @Name NVARCHAR(100),
    @Email NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Users (Name, Email)
    VALUES (@Name, @Email);

    SELECT CAST(SCOPE_IDENTITY() AS INT);
END
GO
