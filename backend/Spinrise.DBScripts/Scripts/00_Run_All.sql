/*
    Spinrise database setup script
    Run this file to recreate the Users table, stored procedures, and seed data.
*/

IF OBJECT_ID('dbo.usp_User_Delete', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Delete;
GO

IF OBJECT_ID('dbo.usp_User_Update', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Update;
GO

IF OBJECT_ID('dbo.usp_User_Insert', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_Insert;
GO

IF OBJECT_ID('dbo.usp_User_GetById', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_GetById;
GO

IF OBJECT_ID('dbo.usp_User_GetAll', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_User_GetAll;
GO

IF OBJECT_ID('dbo.Users', 'U') IS NOT NULL
    DROP TABLE dbo.Users;
GO

CREATE TABLE dbo.Users
(
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
GO

CREATE UNIQUE INDEX UX_Users_Email
ON dbo.Users(Email);
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

INSERT INTO dbo.Users (Name, Email)
VALUES
    ('Alice Johnson', 'alice.johnson@example.com'),
    ('Bob Summers', 'bob.summers@example.com'),
    ('Carol Martinez', 'carol.martinez@example.com');
GO
