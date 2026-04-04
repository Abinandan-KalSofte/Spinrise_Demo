namespace Spinrise.Tests.Unit.Purchase.PurchaseRequisition;

public class PurchaseRequisitionServiceTests
{
    private readonly Mock<IPurchaseRequisitionRepository> _repo = new();
    private readonly Mock<IUnitOfWork> _uow = new();

    [Fact]
    public async Task CreateAsync_PreChecksFail_ReturnsFailureMessage()
    {
        var service = CreateService();
        var dto = CreateValidCreateDto();

        _uow.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _uow.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);
        _repo.Setup(x => x.RunPreChecksAsync("DIV1"))
            .ReturnsAsync(new PreCheckResult
            {
                ItemMasterExists = false,
                DepartmentExists = true,
                DocNumberConfigured = true
            });

        var result = await service.CreateAsync(dto, "SYSTEM");

        result.Success.Should().BeFalse();
        result.Message.Should().Be("Please define Item in Item Master.");
        result.PrNo.Should().BeNull();
        _repo.Verify(x => x.InsertHeaderAsync(It.IsAny<PurchaseRequisitionHeader>()), Times.Never);
    }

    [Fact]
    public async Task CreateAsync_DuplicateLineItems_ReturnsValidationFailure()
    {
        var service = CreateService();
        var dto = CreateValidCreateDto();
        dto.Lines.Add(new CreatePRLineDto
        {
            ItemCode = "ITEM1",
            QtyRequired = 3,
            RequiredDate = DateTime.Today.AddDays(2)
        });

        SetupHappyPathPreChecks(dto.DivCode, dto.DepCode, "ITEM1");

        var result = await service.CreateAsync(dto, "SYSTEM");

        result.Success.Should().BeFalse();
        result.Message.Should().Be("Duplicate item codes are not allowed in the same PR.");
        _repo.Verify(x => x.GetNextPrNumberAsync(It.IsAny<string>(), It.IsAny<string>()), Times.Never);
    }

    [Fact]
    public async Task CreateAsync_ValidRequest_ReturnsGeneratedPrNumberAndPersistsData()
    {
        var service = CreateService();
        var dto = CreateValidCreateDto();
        var expectedPrNo = $"PR/{GetFinancialYear(dto.PrDate)}/00001";

        SetupHappyPathPreChecks(dto.DivCode, dto.DepCode, "ITEM1");
        _repo.Setup(x => x.GetNextPrNumberAsync(dto.DivCode, It.IsAny<string>()))
            .ReturnsAsync(1);
        _repo.Setup(x => x.InsertHeaderAsync(It.IsAny<PurchaseRequisitionHeader>()))
            .ReturnsAsync(10);
        _repo.Setup(x => x.InsertLineAsync(It.IsAny<PurchaseRequisitionLine>()))
            .ReturnsAsync(20);

        var result = await service.CreateAsync(dto, "SYSTEM");

        result.Success.Should().BeTrue();
        result.Message.Should().Be("Purchase Requisition created successfully.");
        result.PrNo.Should().Be(expectedPrNo);
        _repo.Verify(
            x => x.InsertHeaderAsync(It.Is<PurchaseRequisitionHeader>(h =>
                h.DivCode == dto.DivCode &&
                h.DepCode == dto.DepCode &&
                h.PrNo == expectedPrNo &&
                h.CreatedBy == "SYSTEM")),
            Times.Once);
        _repo.Verify(
            x => x.InsertLineAsync(It.Is<PurchaseRequisitionLine>(l =>
                l.DivCode == dto.DivCode &&
                l.PrNo == expectedPrNo &&
                l.PrSNo == 1 &&
                l.ItemCode == "ITEM1")),
            Times.Once);
        _uow.Verify(x => x.BeginAsync(true), Times.Once);
    }

    [Fact]
    public async Task UpdateAsync_ConvertedPr_ReturnsFailureMessage()
    {
        var service = CreateService();
        var dto = CreateValidUpdateDto();

        _uow.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _uow.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);
        _repo.Setup(x => x.GetByIdAsync(dto.DivCode, dto.PrNo))
            .ReturnsAsync(new PurchaseRequisitionHeader
            {
                DivCode = dto.DivCode,
                PrNo = dto.PrNo,
                PrDate = DateTime.Today,
                PrStatus = "CONVERTED"
            });

        var result = await service.UpdateAsync(dto, "SYSTEM");

        result.Success.Should().BeFalse();
        result.Message.Should().Be("This PR has already been converted to a PO and cannot be modified.");
        _repo.Verify(x => x.UpdateHeaderAsync(It.IsAny<PurchaseRequisitionHeader>()), Times.Never);
    }

    private PurchaseRequisitionService CreateService()
    {
        _uow.Setup(x => x.RollbackAsync()).Returns(Task.CompletedTask);
        return new PurchaseRequisitionService(_repo.Object, _uow.Object);
    }

    private void SetupHappyPathPreChecks(string divCode, string depCode, params string[] itemCodes)
    {
        _uow.Setup(x => x.BeginAsync(It.IsAny<bool>())).Returns(Task.CompletedTask);
        _uow.Setup(x => x.CommitAsync()).Returns(Task.CompletedTask);
        _repo.Setup(x => x.RunPreChecksAsync(divCode))
            .ReturnsAsync(new PreCheckResult
            {
                ItemMasterExists = true,
                DepartmentExists = true,
                DocNumberConfigured = true
            });
        _repo.Setup(x => x.GetFeatureFlagAsync(divCode, "backdate_allowed")).ReturnsAsync(true);
        _repo.Setup(x => x.GetFeatureFlagAsync(divCode, "budget_validation_enabled")).ReturnsAsync(false);
        _repo.Setup(x => x.DepartmentExistsAsync(divCode, depCode)).ReturnsAsync(true);

        foreach (var itemCode in itemCodes.Distinct(StringComparer.OrdinalIgnoreCase))
        {
            _repo.Setup(x => x.ItemExistsAsync(divCode, itemCode)).ReturnsAsync(true);
        }
    }

    private static CreatePRHeaderDto CreateValidCreateDto()
    {
        return new CreatePRHeaderDto
        {
            DivCode = "DIV1",
            PrDate = DateTime.Today,
            DepCode = "DEP1",
            ReqName = "Requester",
            Lines =
            [
                new CreatePRLineDto
                {
                    ItemCode = "ITEM1",
                    QtyRequired = 5,
                    RequiredDate = DateTime.Today.AddDays(1),
                    Remarks = "Required urgently"
                }
            ]
        };
    }

    private static UpdatePRHeaderDto CreateValidUpdateDto()
    {
        return new UpdatePRHeaderDto
        {
            DivCode = "DIV1",
            PrNo = "PR/2026-27/00001",
            DepCode = "DEP1",
            Lines =
            [
                new UpdatePRLineDto
                {
                    ItemCode = "ITEM1",
                    QtyRequired = 2,
                    RequiredDate = DateTime.Today.AddDays(1)
                }
            ]
        };
    }

    private static string GetFinancialYear(DateTime date)
    {
        var startYear = date.Month >= 4 ? date.Year : date.Year - 1;
        return $"{startYear}-{(startYear + 1) % 100:00}";
    }
}
