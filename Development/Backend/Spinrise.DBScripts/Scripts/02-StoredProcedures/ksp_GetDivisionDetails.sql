CREATE OR ALTER PROCEDURE dbo.ksp_GetDivisionDetails
    @DivCode VARCHAR(2)
    AS
BEGIN
    SET NOCOUNT ON;

    SELECT	DIV_LOGO,
			DIV_PRINTNAME,
			DIV_UNITNAME,
			DIVISION_ADDR1,
			DIVISION_ADDR2,
			DIVISION_ADDR3,
			PINCODE,
			STATENAME,
			PHONE1,
			EMAIL	
	FROM pp_divmas
	WHERE DivCode = @DivCode
End

exec ksp_GetDivisionDetails '01'
