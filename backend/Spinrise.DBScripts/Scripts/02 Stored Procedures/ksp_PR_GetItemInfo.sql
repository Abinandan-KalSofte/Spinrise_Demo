CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetItemInfo
    @DivCode  VARCHAR(2),
    @ItemCode VARCHAR(10),
    @YFDate   DATE,
    @PDate    DATE
AS
BEGIN
    SET NOCOUNT ON;

    -- ── 1. Base rate from item master ────────────────────────────────────────
    DECLARE @BaseRate NUMERIC(15,5) = 0;

    SELECT @BaseRate = ISNULL(RATE, 0)
    FROM   dbo.in_item
    WHERE  ITEMCODE = @ItemCode;

    -- ── 2. Last GRN receipt rate (TC=1, SLCODE IS NOT NULL) ──────────────────
    DECLARE @ReceiptRate NUMERIC(15,5) = NULL;

    SELECT TOP 1
        @ReceiptRate = T.RATE
    FROM dbo.IN_TRNTAIL T
    JOIN dbo.IN_TRNHEAD H
        ON  T.DIVCODE = H.DIVCODE
        AND T.TC      = H.TC
        AND T.DOCNO   = H.DOCNO
    WHERE T.DIVCODE  = @DivCode
      AND T.ITEMCODE = @ItemCode
      AND H.TC       = 1
      AND H.SLCODE   IS NOT NULL
    ORDER BY H.DOCDT DESC, H.DOCNO DESC;

    DECLARE @EffectiveRate NUMERIC(15,5) = ISNULL(@ReceiptRate, @BaseRate);

    -- ── 3. Current stock (opening + period movements) ────────────────────────
    DECLARE @OYM VARCHAR(6) = CAST(YEAR(@YFDate) AS VARCHAR(4)) + '00';

    DECLARE @OpeningQty NUMERIC(20,3) = 0;
    SELECT  @OpeningQty = ISNULL(SUM(ISNULL(Quantity, 0)), 0)
    FROM    dbo.IN_IDET
    WHERE   DivCode   = @DivCode
      AND   ItemCode  = @ItemCode
      AND   TC        = 0
      AND   YearMonth = @OYM;

    DECLARE @PeriodQty NUMERIC(20,3) = 0;
    SELECT  @PeriodQty = ISNULL(SUM(
        CASE
            WHEN TC_T.TcType IN (1, 3, 5, 7, 9) THEN  ISNULL(T.QUANTITY, 0)
            WHEN TC_T.TcType IN (2, 4, 6, 8)     THEN -ABS(ISNULL(T.QUANTITY, 0))
            ELSE 0
        END
    ), 0)
    FROM    dbo.IN_TRNTAIL T
    JOIN    dbo.IN_TC TC_T ON T.TC = TC_T.TC
    WHERE   T.DIVCODE  = @DivCode
      AND   T.ITEMCODE = @ItemCode
      AND   T.DOCDT   >= @YFDate
      AND   T.DOCDT   <= @PDate;

    DECLARE @CurrentStock NUMERIC(20,3) = @OpeningQty + @PeriodQty;

    -- ── 4. Last PO info ──────────────────────────────────────────────────────
    SELECT TOP 1
        @EffectiveRate       AS Rate,
        @CurrentStock        AS CurrentStock,
        L.RATE               AS LastPoRate,
        H.PORDDT             AS LastPoDate,
        H.SLCODE             AS LastPoSupplierCode,
        ISNULL(S.slname, '') AS LastPoSupplierName
    FROM  dbo.po_ordh H
    JOIN  dbo.po_ordl L
        ON  H.DIVCODE = L.DIVCODE
        AND H.PORDNO  = L.PORDNO
        AND H.PORDDT  = L.PORDDT
        AND H.POGRP   = L.POGRP
    LEFT JOIN dbo.fa_slmas S
        ON  H.SLCODE = S.slcode
    WHERE H.DIVCODE  = @DivCode
      AND L.ITEMCODE = @ItemCode
      AND ISNULL(H.CANFLG, '') <> 'Y'
    ORDER BY H.PORDDT DESC, H.PORDNO DESC;

    IF @@ROWCOUNT = 0
        SELECT
            @EffectiveRate AS Rate,
            @CurrentStock  AS CurrentStock,
            NULL           AS LastPoRate,
            NULL           AS LastPoDate,
            NULL           AS LastPoSupplierCode,
            NULL           AS LastPoSupplierName;
END;
