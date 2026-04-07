CREATE OR ALTER PROCEDURE dbo.usp_PR_GetById
    @DivCode VARCHAR(10),
    @PrNo VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        h.Id,
        h.DivCode,
        h.PrNo,
        h.PrDate,
        h.DepCode,
        h.DepName,
        h.Section,
        h.SubCostCode,
        h.IType,
        h.ReqName,
        h.RefNo,
        h.SaleOrderNo,
        h.SaleOrderDate,
        h.PrStatus,
        h.CreatedBy,
        h.CreatedAt,
        h.ModifiedBy,
        h.ModifiedAt
    FROM dbo.po_prh h
    WHERE h.DivCode = @DivCode
      AND h.PrNo = @PrNo
      AND h.IsDeleted = 0;

    SELECT
        l.Id,
        l.DivCode,
        l.PrNo,
        l.PrSNo,
        l.ItemCode,
        l.ItemName,
        l.Uom,
        l.Rate,
        l.CurrentStock,
        l.QtyRequired,
        l.RequiredDate,
        l.Place,
        l.ApproxCost,
        l.Remarks,
        l.MachineNo,
        l.CostCentreCode,
        l.BudgetGroupCode,
        l.LastPoRate,
        l.LastPoDate,
        l.LastPoSupplierCode,
        l.LastPoSupplierName,
        l.IsSample,
        l.DirectApp
    FROM dbo.po_prl l
    WHERE l.DivCode = @DivCode
      AND l.PrNo = @PrNo
      AND l.IsDeleted = 0
    ORDER BY l.PrSNo;
END;
