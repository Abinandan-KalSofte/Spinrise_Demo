-- Stored Procedure: Get All Users with Pagination
-- Description: Retrieves a paginated list of users
-- Created: 2026-04-03

CREATE OR ALTER PROCEDURE [dbo].[usp_User_GetAllPaginated]
    @PageNumber INT,
    @PageSize INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Validate parameters
    IF @PageNumber < 1 SET @PageNumber = 1;
    IF @PageSize < 1 SET @PageSize = 10;
    IF @PageSize > 100 SET @PageSize = 100;

    -- Return paginated results
    SELECT *
    FROM [dbo].[users]
    ORDER BY [Id] ASC
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END
