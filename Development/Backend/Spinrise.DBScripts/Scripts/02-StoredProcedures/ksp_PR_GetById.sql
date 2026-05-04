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

    /* ================= HEADER ================= */
    SELECT  
        0                                   AS Id,  
        h.divcode                           AS DivCode,  
        h.prno                              AS PrNo,  
        h.prdate                            AS PrDate,  
        h.depcode                           AS DepCode,  
        d.DEPNAME                           AS DepName,  
        h.SECTION                           AS Section,  
        CONVERT(VARCHAR(10), h.SubCost)     AS SubCost,  
        i.IDESC                             AS IType,  

        -- FIX: Safe join fallback
        ISNULL(e.ename, h.REQNAME)          AS ReqName,  

        h.refno                             AS RefNo,  
        h.PO_GRP                            AS PoGroupCode,  
        h.scopecode                         AS ScopeCode,  
        NULL                                AS RequisitionType,  
        h.saleorderno                       AS SaleOrderNo,  
        h.Saleorderdt                       AS SaleOrderDate,  

        /* STATUS — APP1/APP2/APP3 track each approval level; APPFLG is unreliable for level distinction */
        CASE
            WHEN ISNULL(h.cancelflag,'') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APP3,'')      <> ''  THEN 'FINAL_APPROVED'
            WHEN ISNULL(h.APP2,'')      <> ''  THEN 'L2_APPROVED'
            WHEN ISNULL(h.APP1,'')      <> ''  THEN 'L1_APPROVED'
            ELSE                                    'OPEN'
        END                                 AS PrStatus,  

        ISNULL(u.user_name, h.createdby)    AS CreatedBy,  

        -- 🔥 CRITICAL FIX: avoid varchar conversion crash
        TRY_CAST(h.createddt AS DATETIME)   AS CreatedAt,  

        NULL                                AS ModifiedBy,  
        NULL                                AS ModifiedAt,  
        h.budgetBALAMT                      AS BudgetBalAmt,  

        CASE WHEN EXISTS (  
            SELECT 1 FROM dbo.po_prl l2  
            WHERE l2.divcode = h.divcode  
              AND l2.prno    = h.prno  
              AND l2.prdate  = h.prdate  
              AND (ISNULL(l2.FirstApp,'')  = 'Y'  
                OR ISNULL(l2.SecondApp,'') = 'Y'  
                OR ISNULL(l2.ThirdApp,'')  = 'Y')  
        ) THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END AS IsApprovalLocked,  

        ISNULL(u1.user_name, h.APP1)        AS FirstappUser,  
        h.APP1DATE                          AS APP1DATE,  
        ISNULL(u2.user_name, h.APP2)        AS SecondAppUser,  
        h.APP2DATE                          AS APP2DATE,  
        ISNULL(u3.user_name, h.APP3)        AS FinalAppUser,  
        h.APP3DATE                          AS APP3DATE  

    FROM dbo.po_prh h  

    /* 🔥 FIX: Safe numeric join */
    LEFT JOIN pr_emp e  
        ON TRY_CAST(h.REQNAME AS DECIMAL(5,0)) = e.empno  
       AND e.divcode = h.divcode  

    LEFT JOIN in_dep d  
        ON h.depcode = d.DEPCODE  
       AND d.divcode = h.divcode  

    LEFT JOIN dbo.PP_PASSWD u  
        ON h.createdby = u.user_id  
       AND u.divcode   = h.divcode  

    LEFT JOIN dbo.PP_PASSWD u1  
        ON h.APP1 = u1.user_id  
       AND u1.divcode = h.divcode  

    LEFT JOIN dbo.PP_PASSWD u2  
        ON h.APP2 = u2.user_id  
       AND u2.divcode = h.divcode  

    LEFT JOIN dbo.PP_PASSWD u3  
        ON h.APP3 = u3.user_id  
       AND u3.divcode = h.divcode 
	 INNER JOIN dbo.PO_INDENTTYPE i
		ON h.ITYPE = i.ITYPE 

    WHERE h.divcode = @DivCode  
      AND (@PrNo      IS NULL OR h.prno    =  @PrNo)  
      AND (@StartDate IS NULL OR h.prdate >= @StartDate)  
      AND (@EndDate   IS NULL OR h.prdate <  DATEADD(DAY, 1, @EndDate));  


    /* ================= LINE ITEMS ================= */
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

        -- FIX: backward compatibility
        COALESCE(l.qtyind, l.qtyreqd)       AS QtyRequired,  

        l.reqddate                          AS RequiredDate,  
        l.PLACE                             AS Place,  
        l.APPCOST                           AS ApproxCost,  
        l.remarks                           AS Remarks,  
        l.macno                             AS MachineNo,  
        CONVERT(VARCHAR(5), l.CCCODE)       AS CostCentreCode,  
        l.BGRPCODE                          AS BudgetGroupCode,  
        CONVERT(VARCHAR(10), l.SubCost)     AS SubCostCode,
        (SELECT TOP 1 SCCNAME FROM dbo.in_scc WHERE SCCCODE = l.SubCost) AS SubCostName,
        l.LPO_RATE                          AS LastPoRate,  
        l.LPO_DATE                          AS LastPoDate,  
        l.PUR_FROM                          AS LastPoSupplierCode,
        s.slname                            AS LastPoSupplierName,
        i.DRAWNO                            AS DrawNo,  
        i.CATLNO                            AS CatNo,  
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

    LEFT JOIN dbo.fa_slmas s
        ON l.PUR_FROM = s.slcode

    WHERE l.divcode = @DivCode
      AND (@PrNo      IS NULL OR l.prno    =  @PrNo)  
      AND ISNULL(l.AmdFlg,'') <> 'Y'  
      AND (@StartDate IS NULL OR l.prdate >= @StartDate)  
      AND (@EndDate   IS NULL OR l.prdate <  DATEADD(DAY, 1, @EndDate))  

    ORDER BY l.prno, l.prsno;  

END;

Go