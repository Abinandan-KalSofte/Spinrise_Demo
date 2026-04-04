IF OBJECT_ID('dbo.usp_User_GetAll', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_GetAll;
GO

CREATE PROCEDURE dbo.usp_User_GetAll
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, Name, Email
    FROM dbo.Users
    ORDER BY Name;
END
GO
