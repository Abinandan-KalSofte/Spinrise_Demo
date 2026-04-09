CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetAll
    @DivCode  VARCHAR(2),
    @PrNo     VARCHAR(20)  = NULL,
    @FromDate DATE         = NULL,
    @ToDate   DATE         = NULL,
    @DepCode  VARCHAR(3)   = NULL,
    @Status   VARCHAR(20)  = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        0                                                               AS Id,
        h.divcode                                                       AS DivCode,
        h.prno                                                          AS PrNo,
        h.prdate                                                        AS PrDate,
        h.depcode                                                       AS DepCode,
        NULL                                                            AS DepName,
        h.REQNAME                                                       AS ReqName,
        CASE
            WHEN ISNULL(h.cancelflag, '') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APPFLG,     '') = 'Y' THEN 'CONVERTED'
            ELSE 'OPEN'
        END                                                             AS PrStatus,
        h.createdby                                                     AS CreatedBy,
        TRY_CONVERT(DATETIME, h.createddt, 120)                         AS CreatedAt,
        COUNT(l.prsno)                                                  AS LineCount
    FROM dbo.po_prh h
    LEFT JOIN dbo.po_prl l
           ON l.divcode = h.divcode
          AND l.prno    = h.prno
          AND l.prdate  = h.prdate
          AND ISNULL(l.AmdFlg, '') <> 'Y'
    WHERE h.divcode = @DivCode
      AND (@PrNo     IS NULL OR h.prno    = TRY_CAST(@PrNo AS NUMERIC(6,0)))
      AND (@FromDate IS NULL OR h.prdate >= @FromDate)
      AND (@ToDate   IS NULL OR h.prdate <= @ToDate)
      AND (@DepCode  IS NULL OR h.depcode = @DepCode)
      AND (
            @Status IS NULL
            OR (
                @Status = 'CANCELLED' AND ISNULL(h.cancelflag,'') = 'Y'
            ) OR (
                @Status = 'CONVERTED' AND ISNULL(h.APPFLG,'')     = 'Y'
                                     AND ISNULL(h.cancelflag,'') <> 'Y'
            ) OR (
                @Status = 'OPEN'      AND ISNULL(h.APPFLG,'')    <> 'Y'
                                     AND ISNULL(h.cancelflag,'') <> 'Y'
            )
          )
    GROUP BY
        h.divcode, h.prno, h.prdate, h.depcode, h.REQNAME,
        h.cancelflag, h.APPFLG, h.createdby, h.createddt
    ORDER BY h.prdate DESC, h.prno DESC;
END;
