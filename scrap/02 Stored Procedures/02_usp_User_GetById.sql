IF OBJECT_ID('dbo.usp_User_GetById', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_GetById;
GO

CREATE PROCEDURE dbo.usp_User_GetById
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, Name, Email
    FROM dbo.Users
    WHERE Id = @Id;
END
GO
