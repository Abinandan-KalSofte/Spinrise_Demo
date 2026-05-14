using System.Net;
using FluentAssertions;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.Extensions.DependencyInjection;
using Moq;
using Spinrise.API;
using Spinrise.API.Models;
using Spinrise.Application.DTOs.PurchaseRequisitions;
using Spinrise.Application.Interfaces;
using Spinrise.Tests.Integration.TestInfrastructure;
using Xunit;

namespace Spinrise.Tests.Integration.Purchase.PurchaseRequisition;

public class PurchaseRequisitionControllerTests
{
    [Fact]
    public async Task RunPreChecks_ValidRequest_ReturnsSuccess()
    {
        var serviceMock = new Mock<IPurchaseRequisitionService>();
        serviceMock
            .Setup(x => x.RunPreChecksAsync("DIV1"))
            .ReturnsAsync(new PreCheckResult
            {
                ItemMasterExists = true,
                DepartmentExists = true,
                DocNumberConfigured = true
            });

        using var factory = CreateFactory(services =>
        {
            services.RemoveAll<IPurchaseRequisitionService>();
            services.AddSingleton(serviceMock.Object);
        });
        using var client = factory.CreateClient();

        var response = await client.GetAsync("/api/v1/purchase-requisitions/pre-checks?divCode=DIV1");
        var payload = await response.Content.ReadFromJsonAsync<ApiResponse<PreCheckResult>>();

        response.StatusCode.Should().Be(HttpStatusCode.OK);
        payload.Should().NotBeNull();
        payload!.Success.Should().BeTrue();
        payload.Message.Should().Be("Pre-checks completed.");
        payload.Data.Should().NotBeNull();
        payload.Data!.DocNumberConfigured.Should().BeTrue();
    }

    [Fact]
    public async Task GetById_ServiceReturnsNull_ReturnsFailure()
    {
        var serviceMock = new Mock<IPurchaseRequisitionService>();
        serviceMock
            .Setup(x => x.GetByIdAsync("DIV1", 358))
            .ReturnsAsync((PRHeaderResponseDto?)null);

        using var factory = CreateFactory(services =>
        {
            services.RemoveAll<IPurchaseRequisitionService>();
            services.AddSingleton(serviceMock.Object);
        });
        using var client = factory.CreateClient();

        var response = await client.GetAsync("/api/v1/purchase-requisitions/PR001?divCode=DIV1");
        var payload = await response.Content.ReadFromJsonAsync<ApiResponse>();

        response.StatusCode.Should().Be(HttpStatusCode.NotFound);
        payload.Should().NotBeNull();
        payload!.Success.Should().BeFalse();
        payload.Message.Should().Be("Purchase Requisition not found.");
    }

    [Fact]
    public async Task Create_InvalidData_ReturnsValidationFailure()
    {
        using var factory = CreateFactory();
        using var client = factory.CreateClient();

        var response = await client.PostAsJsonAsync("/api/v1/purchase-requisitions", new { });
        var payload = await response.Content.ReadFromJsonAsync<ApiResponse>();

        response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
        payload.Should().NotBeNull();
        payload!.Success.Should().BeFalse();
        payload.Message.Should().Be("Validation failed.");
        payload.Errors.Should().NotBeNull();
    }

    [Fact]
    public async Task Create_ValidRequest_ReturnsCreated()
    {
        var serviceMock = new Mock<IPurchaseRequisitionService>();
        serviceMock
            .Setup(x => x.CreateAsync(
                It.IsAny<CreatePRHeaderDto>(),
                It.IsAny<string>(),
                It.IsAny<AuditContext>()))
            .ReturnsAsync((true, "Purchase Requisition created successfully.", (long?)42, (IReadOnlyList<string>)[]));

        using var factory = CreateFactory(services =>
        {
            services.RemoveAll<IPurchaseRequisitionService>();
            services.AddSingleton(serviceMock.Object);
        });
        using var client = factory.CreateClient();

        var request = new CreatePRHeaderDto
        {
            PrDate  = DateTime.Today,
            DepCode = "DEP1",
            ReqName = "Requester",
            Lines   =
            [
                new CreatePRLineDto
                {
                    ItemCode     = "ITEM1",
                    QtyRequired  = 1,
                    RequiredDate = DateTime.Today.AddDays(1),
                }
            ]
        };

        var response = await client.PostAsJsonAsync("/api/v1/purchase-requisitions", request);
        var payload  = await response.Content.ReadFromJsonAsync<ApiResponse<Dictionary<string, long>>>();

        response.StatusCode.Should().Be(HttpStatusCode.Created);
        payload.Should().NotBeNull();
        payload!.Success.Should().BeTrue();
        payload.Message.Should().Be("Purchase Requisition created successfully.");
    }

    [Fact]
    public async Task Update_ValidRequest_ReturnsOk()
    {
        var serviceMock = new Mock<IPurchaseRequisitionService>();
        serviceMock
            .Setup(x => x.UpdateAsync(
                It.IsAny<UpdatePRHeaderDto>(),
                It.IsAny<string>(),
                It.IsAny<AuditContext>()))
            .ReturnsAsync((true, "Purchase Requisition updated successfully.", (IReadOnlyList<string>)[]));

        using var factory = CreateFactory(services =>
        {
            services.RemoveAll<IPurchaseRequisitionService>();
            services.AddSingleton(serviceMock.Object);
        });
        using var client = factory.CreateClient();

        var request = new UpdatePRHeaderDto
        {
            PrNo    = 1,
            PrDate  = DateTime.Today,
            DepCode = "DEP1",
            ReqName = "Requester",
            Lines   =
            [
                new UpdatePRLineDto
                {
                    ItemCode     = "ITEM1",
                    QtyRequired  = 2,
                    RequiredDate = DateTime.Today.AddDays(1),
                }
            ]
        };

        var response = await client.PutAsJsonAsync("/api/v1/purchase-requisitions/1", request);
        var payload  = await response.Content.ReadFromJsonAsync<ApiResponse>();

        response.StatusCode.Should().Be(HttpStatusCode.OK);
        payload!.Success.Should().BeTrue();
        payload.Message.Should().Be("Purchase Requisition updated successfully.");
    }

    [Fact]
    public async Task Delete_ValidRequest_ReturnsOk()
    {
        var serviceMock = new Mock<IPurchaseRequisitionService>();
        serviceMock
            .Setup(x => x.DeleteAsync(
                It.IsAny<string>(),
                It.IsAny<long>(),
                It.IsAny<string>(),
                It.IsAny<AuditContext>(),
                It.IsAny<DateTime?>(),
                It.IsAny<DateTime?>()))
            .ReturnsAsync((true, "Purchase Requisition deleted successfully."));

        using var factory = CreateFactory(services =>
        {
            services.RemoveAll<IPurchaseRequisitionService>();
            services.AddSingleton(serviceMock.Object);
        });
        using var client = factory.CreateClient();

        var response = await client.DeleteAsync("/api/v1/purchase-requisitions/1?deleteReasonCode=DAMAGE");
        var payload  = await response.Content.ReadFromJsonAsync<ApiResponse>();

        response.StatusCode.Should().Be(HttpStatusCode.OK);
        payload!.Success.Should().BeTrue();
        payload.Message.Should().Be("Purchase Requisition deleted successfully.");
    }

    private static WebApplicationFactory<Program> CreateFactory(Action<IServiceCollection>? configureServices = null)
    {
        var factory = new SpinriseWebApplicationFactory();

        if (configureServices is null)
        {
            return factory;
        }

        return factory.WithWebHostBuilder(builder =>
        {
            builder.ConfigureServices(configureServices);
        });
    }
}
