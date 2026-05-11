CREATE OR ALTER PROCEDURE dbo.ksp_RMI_SearchAgents
    @Term VARCHAR(50) = ''
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TOP 50
           s.slcode AS AgentCode,
           s.slname AS AgentName
    FROM   dbo.fa_slmas s
    WHERE  s.ptypecotton = (SELECT ISNULL(ptypebroker, 'B') FROM dbo.MASTERLEN)
      AND  (s.slcode LIKE '%' + @Term + '%' OR s.slname LIKE '%' + @Term + '%')
      AND  ISNULL(s.active, 'Y') = 'Y'
    ORDER  BY s.slname;
END;
GO
