CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetById
(
    @DivCode   VARCHAR(2),
    @PrNo      NUMERIC(6,0) = NULL,
    @StartDate DATETIME     = NULL,
    @EndDate   DATETIME     = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    ----------------------------------------------------
    -- HEADER
    ----------------------------------------------------
    SELECT
        0                                   AS Id,
        h.divcode                           AS DivCode,
        h.prno                              AS PrNo,
        h.prdate                            AS PrDate,
        h.depcode                           AS DepCode,
        d.DEPNAME                           AS DepName,
        h.SECTION                           AS Section,
        CONVERT(VARCHAR(10), h.SubCost)     AS SubCost,
        h.ITYPE                             AS IType,
        e.ename                             AS ReqName,
        h.refno                             AS RefNo,
        h.PO_GRP                            AS PoGroupCode,
        h.scopecode                         AS ScopeCode,
        NULL                                AS RequisitionType,
        h.saleorderno                       AS SaleOrderNo,
        h.Saleorderdt                       AS SaleOrderDate,
        CASE
            WHEN ISNULL(h.cancelflag,'') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APPFLG,'')     = 'Y' THEN 'CONVERTED'
            WHEN EXISTS (
                SELECT 1 FROM dbo.po_prl l2
                WHERE l2.divcode = h.divcode
                  AND l2.prno    = h.prno
                  AND l2.prdate  = h.prdate
                  AND (ISNULL(l2.FirstApp,'')  = 'Y'
                    OR ISNULL(l2.SecondApp,'') = 'Y'
                    OR ISNULL(l2.ThirdApp,'')  = 'Y')
            ) THEN 'APPROVED'
            ELSE 'OPEN'
        END                                 AS PrStatus,
        h.createdby                         AS CreatedBy,
        CASE
            WHEN ISDATE(h.createddt) = 1
            THEN CAST(h.createddt AS DATETIME)
            ELSE NULL
        END                                 AS CreatedAt,
        NULL                                AS ModifiedBy,
        NULL                                AS ModifiedAt
    FROM dbo.po_prh h
    INNER JOIN pr_emp e
        ON h.REQNAME = e.empno
       AND e.divcode = h.divcode
    INNER JOIN in_dep d
        ON h.depcode = d.DEPCODE
       AND d.divcode = h.divcode
    WHERE h.divcode = @DivCode
      AND (@PrNo     IS NULL OR h.prno    =  @PrNo)
      AND (@StartDate IS NULL OR h.prdate >= @StartDate)
      AND (@EndDate   IS NULL OR h.prdate <  DATEADD(DAY, 1, @EndDate));

    ----------------------------------------------------
    -- DETAILS
    ----------------------------------------------------
    SELECT
        0                                   AS Id,
        l.divcode                           AS DivCode,
        l.prno                              AS PrNo,
        l.prsno                             AS PrSNo,
        l.itemcode                          AS ItemCode,
        l.ITEMMEMO                          AS ItemName,
        i.UOM                               AS Uom,
        l.RATE                              AS Rate,
        l.curstock                          AS CurrentStock,
        l.qtyreqd                           AS QtyRequired,
        l.reqddate                          AS RequiredDate,
        l.PLACE                             AS Place,
        l.APPCOST                           AS ApproxCost,
        l.remarks                           AS Remarks,
        l.macno                             AS MachineNo,
        CONVERT(VARCHAR(5), l.CCCODE)       AS CostCentreCode,
        l.BGRPCODE                          AS BudgetGroupCode,
        CONVERT(VARCHAR(10), l.SubCost)     AS SubCostCode,
        l.LPO_RATE                          AS LastPoRate,
        l.LPO_DATE                          AS LastPoDate,
        l.PUR_FROM                          AS LastPoSupplierCode,
        NULL                                AS LastPoSupplierName,
		i.DRAWNO							AS DrawNo,
		i.CATLNO							AS CatNo,
        l.CATCODE                           AS CategoryCode,
        CASE
            WHEN ISNULL(l.Sample,'N') = 'Y' THEN CAST(1 AS BIT)
            ELSE CAST(0 AS BIT)
        END                                 AS IsSample,
        l.DirectApp                         AS DirectApp,
        NULL                                AS Model,
        NULL                                AS MaxCost
    FROM dbo.po_prl l
    INNER JOIN in_item i
        ON l.itemcode = i.itemcode
    WHERE l.divcode = @DivCode
      AND (@PrNo      IS NULL OR l.prno    =  @PrNo)
      AND ISNULL(l.AmdFlg,'') <> 'Y'
      AND (@StartDate IS NULL OR l.prdate >= @StartDate)
      AND (@EndDate   IS NULL OR l.prdate <  DATEADD(DAY, 1, @EndDate))
    ORDER BY l.prno, l.prsno;
END;

