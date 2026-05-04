CREATE OR ALTER PROCEDURE dbo.ksp_GetActiveDivisions
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DivCode,
           DIVNAME AS DivName
    FROM   pp_divmas
    ORDER  BY DIV_PRINTNAME;
END
GO
