CREATE OR ALTER PROCEDURE dbo.ksp_PR_GetById
    @DivCode VARCHAR(2),
    @PrNo    NUMERIC(6,0)
AS
BEGIN
    SET NOCOUNT ON;

    -- Header
    SELECT
        0                                                          AS Id,
        h.divcode                                                  AS DivCode,
        h.prno                                                     AS PrNo,
        h.prdate                                                   AS PrDate,
        h.depcode                                                  AS DepCode,
        NULL                                                       AS DepName,
        h.SECTION                                                  AS Section,
        CAST(h.SubCost AS VARCHAR(10))                             AS SubCost,
        h.ITYPE                                                    AS IType,
        h.REQNAME                                                  AS ReqName,
        h.refno                                                    AS RefNo,
        h.PO_GRP                                                   AS PoGroupCode,
        h.scopecode                                                AS ScopeCode,
        NULL                                                       AS RequisitionType,
        h.saleorderno                                              AS SaleOrderNo,
        h.Saleorderdt                                              AS SaleOrderDate,
        CASE
            WHEN ISNULL(h.cancelflag, '') = 'Y' THEN 'CANCELLED'
            WHEN ISNULL(h.APPFLG,     '') = 'Y' THEN 'CONVERTED'
            ELSE 'OPEN'
        END                                                        AS PrStatus,
        h.createdby                                                AS CreatedBy,
        TRY_CONVERT(DATETIME, h.createddt, 120)                    AS CreatedAt,
        NULL                                                       AS ModifiedBy,
        NULL                                                       AS ModifiedAt
    FROM dbo.po_prh h
    WHERE h.divcode = @DivCode
      AND h.prno    = @PrNo;

    -- Lines (exclude amended rows from prior update cycles)
    SELECT
        0                                                               AS Id,
        l.divcode                                                       AS DivCode,
        l.prno                                                          AS PrNo,
        l.prsno                                                         AS PrSNo,
        l.itemcode                                                      AS ItemCode,
        l.ITEMMEMO                                                      AS ItemName,
        NULL                                                            AS Uom,
        l.RATE                                                          AS Rate,
        l.curstock                                                      AS CurrentStock,
        l.qtyreqd                                                       AS QtyRequired,
        l.reqddate                                                      AS RequiredDate,
        l.PLACE                                                         AS Place,
        l.APPCOST                                                       AS ApproxCost,
        l.remarks                                                       AS Remarks,
        l.macno                                                         AS MachineNo,
        CAST(l.CCCODE AS VARCHAR(5))                                    AS CostCentreCode,
        l.BGRPCODE                                                      AS BudgetGroupCode,
        CAST(l.SubCost AS VARCHAR(10))                                  AS SubCostCode,
        l.LPO_RATE                                                      AS LastPoRate,
        l.LPO_DATE                                                      AS LastPoDate,
        l.PUR_FROM                                                      AS LastPoSupplierCode,
        NULL                                                            AS LastPoSupplierName,
        CASE WHEN ISNULL(l.Sample,'N') = 'Y'
             THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END               AS IsSample,
        l.DirectApp                                                     AS DirectApp,
        NULL                                                            AS Model,
        NULL                                                            AS MaxCost
    FROM dbo.po_prl l
    WHERE l.divcode = @DivCode
      AND l.prno    = @PrNo
      AND ISNULL(l.AmdFlg, '') <> 'Y'
    ORDER BY l.prsno;
END;
