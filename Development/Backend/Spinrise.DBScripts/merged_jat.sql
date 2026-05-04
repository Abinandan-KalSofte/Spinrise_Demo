-- =============================================================================
-- merged_jat.sql — M02 RMI Purchase Order SPs for JAT database
-- Database : JAT (172.16.16.52\sql2016)
-- IMPORTANT: Execute this file in SSMS connected to JAT — NEVER on SpinriseSaranya
-- Regenerated: 2026-04-28 — all column names corrected against actual JAT schema
-- =============================================================================

USE JAT;
GO

PRINT '=== M02 RMI Purchase Order Stored Procedures ===';
PRINT 'Target DB: ' + DB_NAME();
GO

-- ---------------------------------------------------------------------------
-- 1. Sequence table (idempotent — skipped if already exists)
-- ---------------------------------------------------------------------------
IF NOT EXISTS (
    SELECT 1 FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'rm_cont_number' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
    CREATE TABLE dbo.rm_cont_number (
        divcode VARCHAR(2) NOT NULL,
        prefix  CHAR(1)    NOT NULL,
        fyear   INT        NOT NULL,
        lastno  INT        NOT NULL DEFAULT 0,
        CONSTRAINT PK_rm_cont_number PRIMARY KEY (divcode, prefix, fyear)
    );
    PRINT 'Created dbo.rm_cont_number';
END
ELSE
    PRINT 'dbo.rm_cont_number already exists — skipped';
GO

-- ---------------------------------------------------------------------------
-- 2. ksp_RMI_PO_GenerateNumber  (CD-2 fix: UPDLOCK+HOLDLOCK)
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GenerateNumber...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GenerateNumber
    @DivCode  VARCHAR(2),
    @Prefix   CHAR(1)    = 'P',
    @FYear    INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @NewNo INT;
    BEGIN TRANSACTION;
        UPDATE dbo.rm_cont_number WITH (UPDLOCK, HOLDLOCK)
        SET    lastno = lastno + 1
        WHERE  divcode = @DivCode AND prefix = @Prefix AND fyear = @FYear;

        IF @@ROWCOUNT = 0
            INSERT INTO dbo.rm_cont_number (divcode, prefix, fyear, lastno)
            VALUES (@DivCode, @Prefix, @FYear, 1);

        SELECT @NewNo = lastno
        FROM   dbo.rm_cont_number WITH (NOLOCK)
        WHERE  divcode = @DivCode AND prefix = @Prefix AND fyear = @FYear;
    COMMIT TRANSACTION;
    SELECT @NewNo AS NewNumber;
END;
GO
PRINT 'OK';
GO

-- ---------------------------------------------------------------------------
-- 3. ksp_RMI_PO_GetParam
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetParam...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetParam
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
        ISNULL(SuppLotNoReqArrival, 'N') AS SuppLotNoReqArrival,
        ISNULL(CentralizedOrder,    'N') AS CentralizedOrder,
        ISNULL(SeasonCalcReq,       'N') AS SeasonCalcReq,
        ISNULL(MasterEntryFlg,      'N') AS MasterEntryFlg,
        ISNULL(PRBased,             'N') AS PRBased,
        ISNULL(PO_Approval,         'N') AS PO_Approval,
        ISNULL(addtaxrequired,      'N') AS AddTaxRequired,
        ISNULL(ftamt,               0)   AS FtAmt
    FROM   dbo.RM_PARAM
    WHERE  divcode = @DivCode;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 4. ksp_RMI_PO_GetDefaultCurrency
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetDefaultCurrency...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDefaultCurrency
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT ISNULL(CurrCode, 'INR') AS CurrCode
    FROM   dbo.PO_Para WHERE Divcode = @DivCode;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 5. ksp_RMI_PO_GetDeleteReasons
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetDeleteReasons...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetDeleteReasons
AS
BEGIN
    SET NOCOUNT ON;
    SELECT code, description FROM dbo.RM_DelReason ORDER BY code;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 6. ksp_RMI_PO_GetGSTConfig
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetGSTConfig...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetGSTConfig
    @SupplierCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    -- supptype: 'F' = foreign (no GST); frontend computes IGST by comparing state codes
    SELECT
        ISNULL(s.gststatecode, '') AS GstStateCode,
        ISNULL(s.GSTINNO,      '') AS GstInNo,
        ISNULL(s.SuppType,     '') AS SuppType,
        ISNULL(s.state_code,   '') AS StateCode
    FROM   dbo.fa_slmas s WHERE s.slcode = @SupplierCode;
END;
GO
PRINT 'OK'; 
GO

-- ---------------------------------------------------------------------------
-- 7. ksp_RMI_PO_PreChecks
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_PreChecks...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_PreChecks
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 'PA-1: Supplier Master' AS CheckName,
           CASE WHEN EXISTS (SELECT 1 FROM dbo.fa_slmas)  THEN 1 ELSE 0 END AS Passed,
           'Supplier master (fa_slmas) is empty.' AS ErrorMessage
    UNION ALL SELECT 'PA-2: Area Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_area)   THEN 1 ELSE 0 END, 'Area master (rm_area) is empty.'
    UNION ALL SELECT 'PA-3: Variety Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_var)    THEN 1 ELSE 0 END, 'Variety master (rm_var) is empty.'
    UNION ALL SELECT 'PA-4: Pay Mode Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_pmode)  THEN 1 ELSE 0 END, 'Payment mode master (rm_pmode) is empty.'
    UNION ALL SELECT 'PA-5: Rate Unit Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.rm_rateunit) THEN 1 ELSE 0 END, 'Rate unit master (rm_rateunit) is empty.'
    UNION ALL SELECT 'PA-6: Currency Master',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.fa_currency) THEN 1 ELSE 0 END, 'Currency master (fa_currency) is empty.'
    UNION ALL SELECT 'PA-7: PO Parameters',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.RM_PARAM WHERE divcode = @DivCode) THEN 1 ELSE 0 END,
           'PO parameters (RM_PARAM) not configured for this division.'
    UNION ALL SELECT 'PA-8: PO Configuration',
           CASE WHEN EXISTS (SELECT 1 FROM dbo.PO_Para WHERE Divcode = @DivCode) THEN 1 ELSE 0 END,
           'PO configuration (PO_Para) not set up for this division.';
END;
GO
PRINT 'OK';
GO

-- ---------------------------------------------------------------------------
-- 8. ksp_RMI_PO_GetSummary
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetSummary...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetSummary
    @DivCode  VARCHAR(2),
    @FY_Start DATE = NULL,
    @FY_End   DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Today DATE = CAST(GETDATE() AS DATE);
    IF @FY_Start IS NULL
        SET @FY_Start = CASE WHEN MONTH(@Today) >= 4
                             THEN DATEFROMPARTS(YEAR(@Today),     4, 1)
                             ELSE DATEFROMPARTS(YEAR(@Today) - 1, 4, 1) END;
    IF @FY_End IS NULL
        SET @FY_End = CASE WHEN MONTH(@Today) >= 4
                           THEN DATEFROMPARTS(YEAR(@Today) + 1, 3, 31)
                           ELSE DATEFROMPARTS(YEAR(@Today),     3, 31) END;
    WITH POHeaders AS (
        SELECT CONTNO, CONTDT,
            MAX(ISNULL(Appflg,       '')) AS AppFlg,
            MAX(ISNULL(FIRST_APPFLG, '')) AS FirstAppFlg,
            MAX(ISNULL(CancelFlg,    '')) AS CancelFlag
        FROM dbo.RM_CONT
        WHERE DIVCODE = @DivCode
          AND CAST(CONTDT AS DATE) >= @FY_Start
          AND CAST(CONTDT AS DATE) <= @FY_End
        GROUP BY CONTNO, CONTDT
    )
    SELECT
        COUNT(*)                                                             AS TotalPOs,
        SUM(CASE WHEN CancelFlag  = 'Y'                  THEN 1 ELSE 0 END) AS TotalCancelled,
        SUM(CASE WHEN AppFlg      = 'Y'
                  AND CancelFlag <> 'Y'                  THEN 1 ELSE 0 END) AS TotalApproved,
        SUM(CASE WHEN FirstAppFlg = 'Y' AND AppFlg <> 'Y'
                  AND CancelFlag <> 'Y'                  THEN 1 ELSE 0 END) AS TotalLevel1,
        SUM(CASE WHEN ISNULL(FirstAppFlg,'') <> 'Y'
                  AND CancelFlag <> 'Y'                  THEN 1 ELSE 0 END) AS TotalPending
    FROM POHeaders;
END;
GO
PRINT 'OK'; 
GO

-- ---------------------------------------------------------------------------
-- 9. ksp_RMI_PO_GetPaginated
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetPaginated...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetPaginated
    @DivCode      VARCHAR(2),
    @Page         INT           = 1,
    @PageSize     INT           = 20,
    @SearchText   NVARCHAR(100) = NULL,
    @FromDate     DATE          = NULL,
    @ToDate       DATE          = NULL,
    @SupplierCode VARCHAR(10)   = NULL,
    @Status       VARCHAR(20)   = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @FY_Start DATE, @FY_End DATE;
    DECLARE @Today DATE = CAST(GETDATE() AS DATE);
    IF MONTH(@Today) >= 4
        SELECT @FY_Start = DATEFROMPARTS(YEAR(@Today), 4, 1), @FY_End = DATEFROMPARTS(YEAR(@Today) + 1, 3, 31);
    ELSE
        SELECT @FY_Start = DATEFROMPARTS(YEAR(@Today) - 1, 4, 1), @FY_End = DATEFROMPARTS(YEAR(@Today), 3, 31);
    SET @FromDate = ISNULL(@FromDate, @FY_Start);
    SET @ToDate   = ISNULL(@ToDate,   @FY_End);

    WITH POs AS (
        SELECT
            c.CONTNO, c.CONTDT, c.DIVCODE, c.SUPCD,
            MAX(ISNULL(s.slname, ''))         AS SupplierName,
            COUNT(c.VARCODE)                  AS VarietyCount,
            MAX(ISNULL(c.FIRST_APPFLG, ''))   AS FirstAppFlg,
            MAX(ISNULL(c.fappflg,      ''))   AS FAppFlg,
            MAX(ISNULL(c.Appflg,       ''))   AS AppFlg,
            MAX(ISNULL(c.CancelFlg,    ''))   AS CancelFlag,
            MAX(ISNULL(c.Prepared_by,  ''))   AS CreatedBy
        FROM   dbo.RM_CONT c
        LEFT JOIN dbo.fa_slmas s ON s.slcode = c.SUPCD
        WHERE  c.DIVCODE = @DivCode
          AND  CAST(c.CONTDT AS DATE) >= @FromDate
          AND  CAST(c.CONTDT AS DATE) <= @ToDate
          AND  (@SupplierCode IS NULL OR c.SUPCD = @SupplierCode)
          AND  (@SearchText IS NULL
                OR CAST(c.CONTNO AS VARCHAR(20)) LIKE '%' + @SearchText + '%'
                OR ISNULL(s.slname, '') LIKE '%' + @SearchText + '%')
          AND  (
                @Status IS NULL
                OR (@Status = 'CANCELLED' AND ISNULL(c.CancelFlg, '') = 'Y')
                OR (@Status = 'APPROVED'  AND ISNULL(c.Appflg,    '') = 'Y'
                                          AND ISNULL(c.CancelFlg, '') <> 'Y')
                OR (@Status = 'PENDING'   AND ISNULL(c.Appflg,    '') <> 'Y'
                                          AND ISNULL(c.CancelFlg, '') <> 'Y')
               )
        GROUP BY c.CONTNO, c.CONTDT, c.DIVCODE, c.SUPCD
    )
    SELECT CONTNO, CONTDT, DIVCODE, SUPCD, SupplierName, VarietyCount,
           FirstAppFlg, FAppFlg, AppFlg, CancelFlag, CreatedBy,
           COUNT(*) OVER () AS TotalCount
    FROM  POs
    ORDER BY CONTDT DESC, CONTNO DESC
    OFFSET  (@Page - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 10. ksp_RMI_PO_GetById  (3 result sets: variety rows, delivery, discounts)
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetById...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetById
    @ContNo  NUMERIC(9,0),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;

    -- RS-1: Variety rows
    SELECT
        c.CONTNO, c.CONTDT, c.DIVCODE, c.SUPCD,
        ISNULL(s.slname,      '')   AS SupplierName,
        c.PAYMODE, c.AREACODE,
        ISNULL(a.AREANAME,    '')   AS AreaName,
        c.CURRCODE,
        ISNULL(c.DLYTYPE,     '')   AS DlyType,
        ISNULL(c.ACCEPTANCE,  '')   AS Acceptance,
        ISNULL(c.TRANSPORT,   '')   AS Transport,
        ISNULL(c.SUPFILENAME, '')   AS SupFileName,
        ISNULL(c.CROPYEAR,    '')   AS CropYear,
        ISNULL(c.SEASON,      '')   AS Season,
        ISNULL(c.FTFLG,       '')   AS FtFlg,
        ISNULL(c.FTAMT,       0)    AS FtAmt,
        ISNULL(c.TAX_CHOICE,   '')   AS TaxChoice,
        ISNULL(c.CommPer,     0)    AS CommPer,
        ISNULL(c.commperbale, 0)    AS CommPerBal,
        ISNULL(c.TCS_PER,     0)    AS TcsPer,
        ISNULL(c.SPOTEXPENSE, 0)    AS SpotExpense,
        ISNULL(c.INCIDENTCHARGE, 0) AS IncidentCharge,
        ISNULL(c.SUSCATTYPE,  '')   AS SusCatType,
        ISNULL(c.PLCODE,      '')   AS PlCode,
        ISNULL(c.Line_No,     0)    AS Line_No,
        ISNULL(c.SAMPLEFLG,   'N')  AS Wosample,
        ISNULL(c.FIRST_APPFLG,'')   AS FirstAppFlg,
        ISNULL(c.fappflg,     '')   AS FAppFlg,
        ISNULL(c.Appflg,      '')   AS AppFlg,
        ISNULL(c.CancelFlg,   '')   AS CancelFlag,
        ISNULL(c.NONRECIEVELOT,'')  AS NonRecieveLot,
        c.VARCODE,
        ISNULL(v.VARNAME,    '')    AS VarName,
        ISNULL(c.ORDQTY,     0)     AS OrdQty,
        ISNULL(c.ORDKGS,     0)     AS OrdKgs,
        ISNULL(c.CANDYRATE,  0)     AS CandyRate,
        --ISNULL(c.PACKTYPE,   '')    AS PackType,
        ISNULL(c.BBFLAG,     '')    AS BbFlag,
        ISNULL(c.CASHDISPER, 0)     AS CashDisPer,
        ISNULL(c.TRADEDISPER,0)     AS TradeDisPer,
        ISNULL(c.CESSPER,    0)     AS CessPer,
        ISNULL(c.INSPER,     0)     AS InsPer,
        ISNULL(c.HSN,        '')    AS Hsn,
        ISNULL(c.CGSTPER,    0)     AS CgstPer,
        ISNULL(c.SGSTPER,    0)     AS SgstPer,
        ISNULL(c.IGSTPER,    0)     AS IgstPer,
        ISNULL(c.TAX_CODE,   '')    AS TaxCode,
        c.IPRNO, c.PRDATE,
        ISNULL(c.PRSNO,      0)     AS PrSno,
        ISNULL(c.MSDocno,    '')    AS MsDocNo,
        ISNULL(c.MSDocsno,   '')    AS MsDocSno,
        ISNULL(c.No_of_Load, 0)     AS NoOfLoad,
        ISNULL(c.RATEKG,     0)     AS RateKg,
        ISNULL(c.Prepared_by,'')    AS CreatedBy
    FROM   dbo.RM_CONT c
    LEFT JOIN dbo.fa_slmas s ON s.slcode   = c.SUPCD
    LEFT JOIN dbo.rm_area  a ON a.AREACODE = c.AREACODE
    LEFT JOIN dbo.rm_var   v ON v.VARCODE  = c.VARCODE
    WHERE  c.CONTNO  = @ContNo
      AND  CAST(c.CONTDT AS DATE) = CAST(@ContDt AS DATE)
      AND  c.DIVCODE = @DivCode;

    -- RS-2: Delivery schedule
    SELECT
        d.DIVCODE, d.CONTNO, d.CONTDATE, d.DELDATE, d.QTY AS DelQty,
        ISNULL(d.deladd,      '') AS DelAddress,
        ISNULL(d.VARCODE,     '') AS VarCode,
        ISNULL(d.INSTRUCTION, '') AS Instruction
    FROM   dbo.RM_DELSCHED d
    WHERE  d.CONTNO  = @ContNo
      AND  CAST(d.CONTDATE AS DATE) = CAST(@ContDt AS DATE)
      AND  d.DIVCODE = @DivCode
    ORDER BY d.DELDATE;

    -- RS-3: Discount rates
    SELECT
        r.ContNo,
        r.Docdate AS ContDt,
        ISNULL(r.Varcode, '') AS VarCode,
        ISNULL(r.SUPCD,   '') AS SupCd,
        ISNULL(r.DType,   '') AS DiscType,
        ISNULL(r.DRate,   0)  AS DiscPer
    FROM   dbo.RM_ContDiscntRate r
    WHERE  r.ContNo  = @ContNo
      AND  CAST(r.Docdate AS DATE) = CAST(@ContDt AS DATE);
END;
GO
PRINT 'OK';
GO

-- ---------------------------------------------------------------------------
-- 11. ksp_RMI_PO_GetPendingPRLines
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetPendingPRLines...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetPendingPRLines
    @DivCode      VARCHAR(2),
    @ContDt       DATE,
    @SortBy       TINYINT     = 1,
    @SupplierCode VARCHAR(10) = NULL,
    @Plant        VARCHAR(8)  = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @MasterEntryFlg CHAR(1) = 'N';
    SELECT @MasterEntryFlg = ISNULL(MasterEntryFlg, 'N') FROM dbo.RM_PARAM WHERE divcode = @DivCode;

    SELECT
        l.PRNO                                             AS PrNo,
        h.prdate                                           AS PrDate,
        l.varcode                                          AS VarCode,
        ISNULL(v.VARNAME, '')                              AS VarName,
        ISNULL(l.PACKTYPE, '')                             AS PackType,
        (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0))  AS BalanceQty,
        l.PRSNO                                            AS PrSno,
        ISNULL(e.ename, '')                                AS RequisitionerName,
        ISNULL(rm.docno,   0)                            AS MasterDocNo,
        ISNULL(rm.DocSno,  0)                            AS MasterDocSno,
        ISNULL(rm.CANDYRATE, 0)                            AS CandyRate
    FROM   dbo.Rm_PRL l
    INNER JOIN dbo.RM_PRH  h  ON h.divcode = l.DIVCODE AND h.PRNO = l.PRNO AND h.prdate = l.PRDATE
    INNER JOIN dbo.rm_var  v  ON v.VARCODE = l.varcode
    LEFT JOIN  dbo.pr_emp  e  ON e.empno   = h.REQNAME AND @SortBy = 1
    LEFT JOIN  dbo.VW_rm_SupplierVariety rm
           ON rm.varcode = l.varcode
          AND (@SupplierCode IS NULL OR rm.slcode = @SupplierCode)
          AND (@Plant IS NULL OR rm.plant = @Plant)
    WHERE  l.DIVCODE = @DivCode
      AND  (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0)) > 0
      AND  CAST(h.prdate AS DATE) <= @ContDt
      AND (
           (@MasterEntryFlg = 'Y' AND rm.varcode IS NOT NULL)
        OR (@MasterEntryFlg = 'N' AND rm.varcode IS NULL)
        OR  @MasterEntryFlg NOT IN ('Y','N')
      )
    ORDER BY
        CASE WHEN @SortBy = 1 THEN l.PRNO    END ASC,
        CASE WHEN @SortBy = 1 THEN h.prdate  END ASC,
        CASE WHEN @SortBy = 2 THEN l.varcode END ASC;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 12. ksp_RMI_PO_FilterPRLines
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_FilterPRLines...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_FilterPRLines
    @DivCode      VARCHAR(2),
    @ContDt       DATE,
    @SortBy       TINYINT      = 1,
    @SupplierCode VARCHAR(10)  = NULL,
    @Plant        VARCHAR(8)   = NULL,
    @Indent       VARCHAR(20)  = NULL,
    @ItemCode     VARCHAR(10)  = NULL,
    @ItemName     VARCHAR(250) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @MasterEntryFlg CHAR(1) = 'N';
    SELECT @MasterEntryFlg = ISNULL(MasterEntryFlg, 'N') FROM dbo.RM_PARAM WHERE divcode = @DivCode;

    SELECT
        l.PRNO                                             AS PrNo,
        h.prdate                                           AS PrDate,
        l.varcode                                          AS VarCode,
        ISNULL(v.VARNAME, '')                              AS VarName,
        ISNULL(l.PACKTYPE, '')                             AS PackType,
        (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0))  AS BalanceQty,
        l.PRSNO                                            AS PrSno,
        ISNULL(e.ename, '')                                AS RequisitionerName,
        ISNULL(rm.DOCNO,   0)                            AS MasterDocNo,
        ISNULL(rm.DOCSNO,  0)                            AS MasterDocSno,
        ISNULL(rm.CANDYRATE, 0)                            AS CandyRate
    FROM   dbo.Rm_PRL l
    INNER JOIN dbo.RM_PRH  h  ON h.divcode = l.DIVCODE AND h.PRNO = l.PRNO AND h.prdate = l.PRDATE
    INNER JOIN dbo.rm_var  v  ON v.VARCODE = l.varcode
    LEFT JOIN  dbo.pr_emp  e  ON e.empno   = h.REQNAME AND @SortBy = 1
    LEFT JOIN  dbo.VW_rm_SupplierVariety rm
           ON rm.varcode = l.varcode
          AND (@SupplierCode IS NULL OR rm.slcode = @SupplierCode)
          AND (@Plant IS NULL OR rm.plant = @Plant)
    WHERE  l.DIVCODE = @DivCode
      AND  (ISNULL(l.qtyindKG, 0) - ISNULL(l.qtyordKG, 0)) > 0
      AND  CAST(h.prdate AS DATE) <= @ContDt
      AND  (@Indent   IS NULL OR CAST(l.PRNO AS VARCHAR(20)) LIKE '%' + @Indent   + '%')
      AND  (@ItemCode IS NULL OR l.varcode             LIKE '%' + @ItemCode + '%')
      AND  (@ItemName IS NULL OR ISNULL(v.VARNAME,'')  LIKE '%' + @ItemName + '%')
      AND (
           (@MasterEntryFlg = 'Y' AND rm.varcode IS NOT NULL)
        OR (@MasterEntryFlg = 'N' AND rm.varcode IS NULL)
        OR  @MasterEntryFlg NOT IN ('Y','N')
      )
    ORDER BY
        CASE WHEN @SortBy = 1 THEN l.PRNO    END ASC,
        CASE WHEN @SortBy = 1 THEN h.prdate  END ASC,
        CASE WHEN @SortBy = 2 THEN l.varcode END ASC;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 13. ksp_RMI_PO_InsertAuditLog
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_InsertAuditLog...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertAuditLog
    @ContNo           NUMERIC(9,0),
    @ContDt           DATETIME,
    @DivCode          VARCHAR(2),
    @Mode             VARCHAR(10),
    @UserId           VARCHAR(50),
    @DeleteReasonCode VARCHAR(4) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.RM_Trans_Log
        (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId, DelReason)
    VALUES
        (@ContNo, @ContDt, @DivCode, @Mode, GETDATE(), @UserId,
         CASE WHEN @Mode = 'CANCEL' THEN @DeleteReasonCode ELSE NULL END);
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 14. ksp_RMI_PO_Insert  (CD-3 fix: UPDLOCK on Rm_PRL inside caller transaction)
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_Insert...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_Insert
    @ContNo          NUMERIC(9,0),
    @ContDt          DATETIME,
    @DivCode         VARCHAR(2),
    @SupCd           VARCHAR(10),
    @PayMode         VARCHAR(10)   = NULL,
    @AreaCode        VARCHAR(10)   = NULL,
    @CurrCode        VARCHAR(5)    = NULL,
    @DlyType         VARCHAR(5)    = NULL,
    @Acceptance      VARCHAR(200)  = NULL,
    @Transport       VARCHAR(100)  = NULL,
    @SupFileName     VARCHAR(200)  = NULL,
    @CropYear        VARCHAR(20)   = NULL,
    @Season          VARCHAR(20)   = NULL,
    @FtFlg           CHAR(1)       = NULL,
    @FtAmt           NUMERIC(12,2) = 0,
    @TaxChoice       VARCHAR(20)   = NULL,
    @CommPer         NUMERIC(8,2)  = 0,
    @CommPerBal      NUMERIC(8,2)  = 0,
    @TcsPer          NUMERIC(8,2)  = 0,
    @SpotExpense     NUMERIC(12,2) = 0,
    @IncidentCharge  NUMERIC(8,2)  = 0,
    @SusCatType      VARCHAR(20)   = NULL,
    @PlCode          VARCHAR(10)   = NULL,
    @LineNo          INT           = 1,
    @SampleFlg       CHAR(1)       = 'N',
    @PreparedBy      VARCHAR(50)   = NULL,
    @VarCode         VARCHAR(10),
    @OrdQty          NUMERIC(12,2) = 0,
    @OrdKgs          NUMERIC(12,3) = 0,
    @CandyRate       NUMERIC(12,4) = 0,
    @PackType        VARCHAR(5)    = NULL,
    @BbFlag          CHAR(1)       = NULL,
    @CashDisPer      NUMERIC(8,2)  = 0,
    @TradeDisPer     NUMERIC(8,2)  = 0,
    @CessPer         NUMERIC(8,2)  = 0,
    @InsPer          NUMERIC(8,2)  = 0,
    @Hsn             VARCHAR(20)   = NULL,
    @CgstPer         NUMERIC(8,2)  = 0,
    @SgstPer         NUMERIC(8,2)  = 0,
    @IgstPer         NUMERIC(8,2)  = 0,
    @TaxCode         VARCHAR(20)   = NULL,
    @IPrNo           NUMERIC(6,0)  = NULL,
    @PrDate          DATETIME      = NULL,
    @PrSno           INT           = NULL,
    @MsDocNo         VARCHAR(10)   = NULL,
    @MsDocSno        VARCHAR(10)   = NULL,
    @NoOfLoad        INT           = 0,
    @RateKg          NUMERIC(12,4) = 0
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.RM_CONT
        (CONTNO, CONTDT, DIVCODE, SUPCD, PAYMODE, AREACODE, CURRCODE, DLYTYPE,
         ACCEPTANCE, TRANSPORT, SUPFILENAME, CROPYEAR, SEASON, FTFLG, FTAMT,
         TAX_CHOICE, CommPer, commperbale, TCS_PER, SPOTEXPENSE,
         INCIDENTCHARGE, SUSCATTYPE, PLCODE, Line_No, SAMPLEFLG,
         VARCODE, ORDQTY, ORDKGS, CANDYRATE,
		  --PACKTYPE,
		   BBFLAG,
         CASHDISPER, TRADEDISPER, CESSPER, INSPER,
         HSN, CGSTPER, SGSTPER, IGSTPER, TAX_CODE,
         IPRNO, PRDATE, PRSNO, MSDocno, MSDocsno, No_of_Load, RATEKG,
         Prepared_by)
    VALUES
        (@ContNo, @ContDt, @DivCode, @SupCd, @PayMode, @AreaCode, @CurrCode, @DlyType,
         @Acceptance, @Transport, @SupFileName, @CropYear, @Season, @FtFlg, @FtAmt,
         @TaxChoice, @CommPer, @CommPerBal, @TcsPer, @SpotExpense,
         @IncidentCharge, @SusCatType, @PlCode, @LineNo, @SampleFlg,
         @VarCode, @OrdQty, @OrdKgs, @CandyRate,
		  --@PackType,
		   @BbFlag,
         @CashDisPer, @TradeDisPer, @CessPer, @InsPer,
         @Hsn, @CgstPer, @SgstPer, @IgstPer, @TaxCode,
         @IPrNo, @PrDate, @PrSno, @MsDocNo, @MsDocSno, @NoOfLoad, @RateKg,
         @PreparedBy);

    IF @IPrNo IS NOT NULL AND @PrSno IS NOT NULL
    BEGIN
        UPDATE dbo.Rm_PRL WITH (UPDLOCK)
        SET    qtyordKG = ISNULL(qtyordKG, 0) + @OrdQty
        WHERE  DIVCODE = @DivCode AND PRNO = @IPrNo AND PRDATE = @PrDate AND PRSNO = @PrSno;
    END;

    SELECT @@ROWCOUNT AS RowsAffected;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 15. ksp_RMI_PO_InsertDiscountRate
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_InsertDiscountRate...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDiscountRate
    @ContNo   NUMERIC(9,0),
    @ContDt   DATETIME,
    @VarCode  VARCHAR(10),
    @SupCd    VARCHAR(10),
    @DiscType VARCHAR(20),
    @DiscRate NUMERIC(8,2) = 0
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.RM_ContDiscntRate (ContNo, Docdate, Varcode, SUPCD, DType, DRate)
    VALUES (@ContNo, @ContDt, @VarCode, @SupCd, @DiscType, @DiscRate);
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 16. ksp_RMI_PO_InsertDeliverySchedule
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_InsertDeliverySchedule...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertDeliverySchedule
    @ContNo      NUMERIC(9,0),
    @ContDt      DATETIME,
    @DivCode     VARCHAR(2),
    @DelDate     DATE,
    @DelQty      NUMERIC(12,2),
    @DelAddress  VARCHAR(200) = NULL,
    @VarCode     VARCHAR(10)  = NULL,
    @Instruction VARCHAR(500) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.RM_DELSCHED (DIVCODE, CONTNO, CONTDATE, DELDATE, QTY, deladd, VARCODE, INSTRUCTION)
    VALUES (@DivCode, @ContNo, @ContDt, @DelDate, @DelQty, @DelAddress, @VarCode, @Instruction);
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 17. ksp_RMI_PO_InsertSlotNo  (runs post-commit)
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_InsertSlotNo...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_InsertSlotNo
    @ContNo  NUMERIC(9,0),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2),
    @LotFrom NUMERIC(10,0),
    @LotTo   NUMERIC(10,0)
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM dbo.RM_CONT_SLOTNO
    WHERE CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE) AND DIVCODE = @DivCode;

    DECLARE @Lot NUMERIC(10,0) = @LotFrom, @LotList VARCHAR(MAX) = '';
    WHILE @Lot <= @LotTo
    BEGIN
        INSERT INTO dbo.RM_CONT_SLOTNO (DIVCODE, CONTNO, CONTDT, SLOTNO) VALUES (@DivCode, @ContNo, @ContDt, @Lot);
        SET @LotList = @LotList + CAST(@Lot AS VARCHAR) + ',';
        SET @Lot = @Lot + 1;
    END;
    IF LEN(@LotList) > 0 SET @LotList = LEFT(@LotList, LEN(@LotList) - 1);
    UPDATE dbo.RM_CONT SET NONRECIEVELOT = @LotList
    WHERE  CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE) AND DIVCODE = @DivCode;
END;
GO
PRINT 'OK'; 
GO

-- ---------------------------------------------------------------------------
-- 18. ksp_RMI_PO_Delete  (soft cancel: CancelFlg = 'Y' + audit log)
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_Delete...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_Delete
    @ContNo           NUMERIC(9,0),
    @ContDt           DATETIME,
    @DivCode          VARCHAR(2),
    @DeleteReasonCode VARCHAR(4),
    @DeletedBy        VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1 FROM dbo.RM_CONT
        WHERE CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE)
          AND DIVCODE = @DivCode AND ISNULL(FIRST_APPFLG,'') = 'Y'
    )
    BEGIN
        RAISERROR('Cannot cancel: approval has commenced for this Purchase Order.', 16, 1); RETURN;
    END;

    IF EXISTS (
        SELECT 1 FROM dbo.RM_Arrival
        WHERE CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE) AND DIVCODE = @DivCode
    )
    BEGIN
        RAISERROR('Cannot cancel: goods arrival records exist for this Purchase Order.', 16, 1); RETURN;
    END;

    BEGIN TRANSACTION;
        INSERT INTO dbo.RM_Trans_Log (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId, DelReason)
        VALUES (@ContNo, @ContDt, @DivCode, 'CANCEL', GETDATE(), @DeletedBy, @DeleteReasonCode);

        UPDATE dbo.RM_CONT SET CancelFlg = 'Y'
        WHERE  CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE) AND DIVCODE = @DivCode;
    COMMIT TRANSACTION;

    SELECT @@ROWCOUNT AS RowsAffected;
END;
GO
PRINT 'OK';
 GO

-- ---------------------------------------------------------------------------
-- 19. ksp_RMI_PO_GetApprovalStatus
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_GetApprovalStatus...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_GetApprovalStatus
    @ContNo  NUMERIC(9,0),
    @ContDt  DATETIME,
    @DivCode VARCHAR(2)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TOP 1
        ISNULL(c.FIRST_APPFLG,'') AS FirstAppFlg,
        ISNULL(c.fappflg,     '') AS FAppFlg,
        ISNULL(c.Appflg,      '') AS AppFlg,
        ISNULL(c.CancelFlg,   '') AS CancelFlag
    FROM   dbo.RM_CONT c
    WHERE  c.CONTNO = @ContNo AND CAST(c.CONTDT AS DATE) = CAST(@ContDt AS DATE) AND c.DIVCODE = @DivCode;
END;
GO
PRINT 'OK'; 
GO

-- ---------------------------------------------------------------------------
-- 20. ksp_RMI_PO_UpdateApproval
-- ---------------------------------------------------------------------------
PRINT 'Creating ksp_RMI_PO_UpdateApproval...';
GO
CREATE OR ALTER PROCEDURE dbo.ksp_RMI_PO_UpdateApproval
    @ContNo     NUMERIC(9,0),
    @ContDt     DATETIME,
    @DivCode    VARCHAR(2),
    @Level      TINYINT,
    @Action     VARCHAR(10),
    @ApproverId VARCHAR(50),
    @Remarks    NVARCHAR(500) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRANSACTION;

    IF @Action = 'APPROVE'
        UPDATE dbo.RM_CONT SET
            FIRST_APPFLG = CASE WHEN @Level = 1 THEN 'Y' ELSE FIRST_APPFLG END,
            fappflg      = CASE WHEN @Level = 2 THEN 'Y' ELSE fappflg      END,
            Appflg       = CASE WHEN @Level = 3 THEN 'Y' ELSE Appflg       END
        WHERE CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE) AND DIVCODE = @DivCode;
    ELSE IF @Action = 'REJECT'
        UPDATE dbo.RM_CONT SET
            FIRST_APPFLG = CASE WHEN @Level <= 1 THEN '' ELSE FIRST_APPFLG END,
            fappflg      = CASE WHEN @Level <= 2 THEN '' ELSE fappflg      END,
            Appflg       = CASE WHEN @Level <= 3 THEN '' ELSE Appflg       END
        WHERE CONTNO = @ContNo AND CAST(CONTDT AS DATE) = CAST(@ContDt AS DATE) AND DIVCODE = @DivCode;

    INSERT INTO dbo.RM_Trans_Log (ContNo, Contdt, DIVCODE, Trans_Mod, Trans_date, Trans_UserId, DelReason)
    VALUES (@ContNo, @ContDt, @DivCode,
            'APPROVE-L' + CAST(@Level AS VARCHAR) + '-' + @Action,
            GETDATE(), @ApproverId, NULL);

    COMMIT TRANSACTION;
END;
GO
PRINT 'OK'; 
GO

PRINT '=== All M02 stored procedures deployed successfully ===';
GO
 -- ── ksp_RMI_GetSuppliers ──────────────────────────────────────────────────
  CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetSuppliers
      @Search VARCHAR(50) = NULL
  AS
  BEGIN
      SET NOCOUNT ON;
      SELECT TOP 50
          s.slcode             AS SupCode,
          ISNULL(s.slname, '') AS SupName
      FROM   dbo.fa_slmas s
      WHERE  @Search IS NULL
          OR s.slcode LIKE '%' + @Search + '%'
          OR s.slname LIKE '%' + @Search + '%'
      ORDER BY s.slcode;
  END;
  GO

  -- ── ksp_RMI_GetVarieties ──────────────────────────────────────────────────
  CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetVarieties
      @Search VARCHAR(50) = NULL
  AS
  BEGIN
      SET NOCOUNT ON;
      SELECT TOP 50
          v.VARCODE                    AS VarCode,
          ISNULL(v.VARNAME,  '')       AS VarName,
          ISNULL(v.HSN,      '')       AS HsnCode,
          ISNULL(v.CGSTPER,  0)        AS CgstPer,
          ISNULL(v.SGSTPER,  0)        AS SgstPer,
          ISNULL(v.IGSTPER,  0)        AS IgstPer,
          ISNULL(v.taxcode, '')       AS TaxCode
      FROM   dbo.rm_var v
      WHERE  @Search IS NULL
          OR v.VARCODE LIKE '%' + @Search + '%'
          OR v.VARNAME LIKE '%' + @Search + '%'
      ORDER BY v.VARCODE;
  END;
  GO

  -- ── ksp_RMI_GetAreas ─────────────────────────────────────────────────────
  CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetAreas
      @Search VARCHAR(50) = NULL
  AS
  BEGIN
      SET NOCOUNT ON;
      SELECT TOP 50
          a.AREACODE              AS AreaCode,
          ISNULL(a.AREANAME, '') AS AreaName
      FROM   dbo.rm_area a
      WHERE  @Search IS NULL
          OR a.AREACODE LIKE '%' + @Search + '%'
          OR a.AREANAME LIKE '%' + @Search + '%'
      ORDER BY a.AREACODE;
  END;
  GO

  -- ── ksp_RMI_GetPaymentModes ───────────────────────────────────────────────
  -- rm_pmode columns confirmed from legacy: paymode (code), paydesc (description)
  CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetPaymentModes
  AS
  BEGIN
      SET NOCOUNT ON;
      SELECT
          paymode               AS PmCode,
          ISNULL(paydesc, '') AS PmName
      FROM   dbo.rm_pmode
      ORDER BY paymode;
  END;
  GO

  -- ── ksp_RMI_GetCurrencies ─────────────────────────────────────────────────
  -- fa_currency columns confirmed from legacy: currcode, currname
  CREATE OR ALTER PROCEDURE dbo.ksp_RMI_GetCurrencies
  AS
  BEGIN
      SET NOCOUNT ON;
      SELECT
          currcode                        AS CurrCode,
          ISNULL(currname, currcode)      AS CurrName
      FROM   dbo.fa_currency
      ORDER BY currcode;
  END;
  GO
