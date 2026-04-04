namespace Spinrise.Application.DTOs.PurchaseRequisitions;

public static class PRMappings
{
    public static PRHeaderResponseDto ToResponseDto(this PurchaseRequisitionHeader entity)
    {
        return new PRHeaderResponseDto
        {
            Id = entity.Id,
            DivCode = entity.DivCode,
            PrNo = entity.PrNo,
            PrDate = entity.PrDate,
            DepCode = entity.DepCode,
            DepName = entity.DepName,
            Section = entity.Section,
            SubCostCode = entity.SubCostCode,
            IType = entity.IType,
            ReqName = entity.ReqName,
            RefNo = entity.RefNo,
            SaleOrderNo = entity.SaleOrderNo,
            SaleOrderDate = entity.SaleOrderDate,
            PrStatus = entity.PrStatus,
            CreatedBy = entity.CreatedBy,
            CreatedAt = entity.CreatedAt,
            ModifiedBy = entity.ModifiedBy,
            ModifiedAt = entity.ModifiedAt,
            Lines = entity.Lines.Select(line => line.ToLineResponseDto()).ToList()
        };
    }

    public static PRLineResponseDto ToLineResponseDto(this PurchaseRequisitionLine line)
    {
        return new PRLineResponseDto
        {
            Id = line.Id,
            PrSNo = line.PrSNo,
            ItemCode = line.ItemCode,
            ItemName = line.ItemName,
            Uom = line.Uom,
            Rate = line.Rate,
            CurrentStock = line.CurrentStock,
            QtyRequired = line.QtyRequired,
            RequiredDate = line.RequiredDate,
            Place = line.Place,
            ApproxCost = line.ApproxCost,
            Remarks = line.Remarks,
            MachineNo = line.MachineNo,
            CostCentreCode = line.CostCentreCode,
            BudgetGroupCode = line.BudgetGroupCode,
            LastPoRate = line.LastPoRate,
            LastPoDate = line.LastPoDate,
            LastPoSupplierCode = line.LastPoSupplierCode,
            LastPoSupplierName = line.LastPoSupplierName,
            IsSample = line.IsSample
        };
    }

    public static PurchaseRequisitionHeader ToEntity(this CreatePRHeaderDto dto, string prNo, string createdBy)
    {
        return new PurchaseRequisitionHeader
        {
            DivCode = dto.DivCode.Trim(),
            PrNo = prNo,
            PrDate = dto.PrDate,
            DepCode = dto.DepCode.Trim(),
            Section = dto.Section?.Trim(),
            SubCostCode = dto.SubCostCode?.Trim(),
            IType = dto.IType?.Trim(),
            ReqName = dto.ReqName?.Trim(),
            RefNo = dto.RefNo?.Trim(),
            SaleOrderNo = dto.SaleOrderNo?.Trim(),
            SaleOrderDate = dto.SaleOrderDate,
            PrStatus = "DRAFT",
            CreatedBy = createdBy.Trim()
        };
    }

    public static PurchaseRequisitionHeader ToEntity(this UpdatePRHeaderDto dto, string modifiedBy, DateTime prDate, string? depName, string prStatus, string createdBy, DateTime createdAt)
    {
        return new PurchaseRequisitionHeader
        {
            DivCode = dto.DivCode.Trim(),
            PrNo = dto.PrNo.Trim(),
            PrDate = prDate,
            DepCode = dto.DepCode.Trim(),
            DepName = depName,
            Section = dto.Section?.Trim(),
            SubCostCode = dto.SubCostCode?.Trim(),
            IType = dto.IType?.Trim(),
            ReqName = dto.ReqName?.Trim(),
            RefNo = dto.RefNo?.Trim(),
            SaleOrderNo = dto.SaleOrderNo?.Trim(),
            SaleOrderDate = dto.SaleOrderDate,
            PrStatus = prStatus,
            CreatedBy = createdBy,
            CreatedAt = createdAt,
            ModifiedBy = modifiedBy.Trim()
        };
    }

    public static PurchaseRequisitionLine ToEntity(this CreatePRLineDto dto, string divCode, string prNo, int prSNo)
    {
        return new PurchaseRequisitionLine
        {
            DivCode = divCode.Trim(),
            PrNo = prNo,
            PrSNo = prSNo,
            ItemCode = dto.ItemCode.Trim(),
            QtyRequired = dto.QtyRequired,
            RequiredDate = dto.RequiredDate,
            Place = dto.Place?.Trim(),
            ApproxCost = dto.ApproxCost,
            Remarks = dto.Remarks?.Trim(),
            MachineNo = dto.MachineNo?.Trim(),
            CostCentreCode = dto.CostCentreCode?.Trim(),
            BudgetGroupCode = dto.BudgetGroupCode?.Trim(),
            IsSample = dto.IsSample
        };
    }

    public static PurchaseRequisitionLine ToEntity(this UpdatePRLineDto dto, string divCode, string prNo, int prSNo)
    {
        return ((CreatePRLineDto)dto).ToEntity(divCode, prNo, prSNo);
    }
}
