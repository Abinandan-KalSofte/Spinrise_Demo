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
            SubCost = entity.SubCost,
            IType = entity.IType,
            ReqName = entity.ReqName,
            RefNo = entity.RefNo,
            PoGroupCode = entity.PoGroupCode,
            ScopeCode = entity.ScopeCode,
            SaleOrderNo = entity.SaleOrderNo,
            SaleOrderDate = entity.SaleOrderDate,
            PrStatus = entity.PrStatus,
            CreatedBy = entity.CreatedBy,
            CreatedAt = entity.CreatedAt,
            ModifiedBy    = entity.ModifiedBy,
            ModifiedAt    = entity.ModifiedAt,
            BudgetBalance = entity.BudgetBalAmt,
            Level1ApproverName = entity.FirstappUser,
            Level1ApprovedAt   = entity.APP1DATE,
            Level2ApproverName = entity.SecondAppUser,
            Level2ApprovedAt   = entity.APP2DATE,
            FinalApproverName  = entity.FinalAppUser,
            FinalApprovedAt    = entity.APP3DATE,
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
            SubCostCode = line.SubCostCode,
            LastPoRate = line.LastPoRate,
            LastPoDate = line.LastPoDate,
            LastPoSupplierCode = line.LastPoSupplierCode,
            LastPoSupplierName = line.LastPoSupplierName,
            IsSample = line.IsSample,
            CategoryCode = line.CategoryCode,
            DrawNo = line.DrawNo,
            CatNo = line.CatNo,
            Model = line.Model,
            MaxCost = line.MaxCost
        };
    }

    public static PurchaseRequisitionHeader ToEntity(this CreatePRHeaderDto dto, long prNo, string divCode, string createdBy)
    {
        return new PurchaseRequisitionHeader
        {
            DivCode = divCode.Trim(),
            PrNo = prNo,
            PrDate = dto.PrDate,
            DepCode = dto.DepCode.Trim(),
            Section = dto.Section?.Trim(),
            SubCost = dto.SubCost,
            IType = dto.IType?.Trim(),
            ReqName = dto.ReqName?.Trim(),
            RefNo = dto.RefNo?.Trim(),
            PoGroupCode = dto.PoGroupCode?.Trim(),
            ScopeCode = dto.ScopeCode?.Trim(),
            SaleOrderNo = dto.SaleOrderNo?.Trim(),
            SaleOrderDate = dto.SaleOrderDate,
            PrStatus = "DRAFT",
            CreatedBy = createdBy.Trim()
        };
    }

    public static PurchaseRequisitionHeader ToEntity(this UpdatePRHeaderDto dto, string divCode, string modifiedBy, DateTime prDate, string? depName, string prStatus, string createdBy, DateTime createdAt)
    {
        return new PurchaseRequisitionHeader
        {
            DivCode = divCode.Trim(),
            PrNo = dto.PrNo,
            PrDate = prDate,
            DepCode = dto.DepCode.Trim(),
            DepName = depName,
            Section = dto.Section?.Trim(),
            SubCost = dto.SubCost,
            IType = dto.IType?.Trim(),
            ReqName = dto.ReqName?.Trim(),
            RefNo = dto.RefNo?.Trim(),
            PoGroupCode = dto.PoGroupCode?.Trim(),
            ScopeCode = dto.ScopeCode?.Trim(),
            SaleOrderNo = dto.SaleOrderNo?.Trim(),
            SaleOrderDate = dto.SaleOrderDate,
            PrStatus = prStatus,
            CreatedBy = createdBy,
            CreatedAt = createdAt,
            ModifiedBy = modifiedBy.Trim()
        };
    }

    public static PurchaseRequisitionLine ToEntity(this CreatePRLineDto dto, string divCode, long prNo, int prSNo)
    {
        return new PurchaseRequisitionLine
        {
            DivCode = divCode.Trim(),
            PrNo = prNo,
            PrSNo = prSNo,
            ItemCode = dto.ItemCode.Trim(),
            ItemName = dto.ItemName?.Trim(),
            Uom = dto.Uom?.Trim(),
            Rate = dto.Rate,
            CurrentStock = dto.CurrentStock,
            QtyRequired = dto.QtyRequired,
            RequiredDate = dto.RequiredDate,
            Place = dto.Place?.Trim(),
            ApproxCost = dto.ApproxCost,
            Remarks = dto.Remarks?.Trim(),
            MachineNo = dto.MachineNo?.Trim(),
            CostCentreCode = dto.CostCentreCode?.Trim(),
            BudgetGroupCode = dto.BudgetGroupCode?.Trim(),
            SubCostCode = dto.SubCostCode,
            LastPoRate = dto.LastPoRate,
            LastPoDate = dto.LastPoDate,
            LastPoSupplierCode = dto.LastPoSupplierCode?.Trim(),
            LastPoSupplierName = dto.LastPoSupplierName?.Trim(),
            IsSample = dto.IsSample,
            CategoryCode = dto.CategoryCode?.Trim().ToUpperInvariant(),
            DrawNo = dto.DrawNo?.Trim(),
            CatNo = dto.CatNo?.Trim(),
            Model = dto.Model?.Trim(),
            MaxCost = dto.MaxCost
        };
    }

    public static PurchaseRequisitionLine ToEntity(this UpdatePRLineDto dto, string divCode, long prNo, int prSNo)
    {
        return ((CreatePRLineDto)dto).ToEntity(divCode, prNo, prSNo);
    }
}
