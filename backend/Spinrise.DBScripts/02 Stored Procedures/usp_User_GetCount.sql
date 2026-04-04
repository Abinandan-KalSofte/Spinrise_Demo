-- Stored Procedure: Get Total User Count
-- Description: Returns the total number of users in the database
-- Created: 2026-04-03

CREATE OR ALTER PROCEDURE [dbo].[usp_User_GetCount]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT COUNT(*) as TotalCount
    FROM [dbo].[users];
END
