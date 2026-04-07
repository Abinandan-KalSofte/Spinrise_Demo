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
            .Setup(x => x.GetByIdAsync("DIV1", "PR001"))
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
    public async Task Create_ValidRequest_ReturnsCreatedSuccess()
    {
        var serviceMock = new Mock<IPurchaseRequisitionService>();
        serviceMock
            .Setup(x => x.CreateAsync(It.IsAny<CreatePRHeaderDto>(), It.IsAny<string>(), It.IsAny<string>()))
            .ReturnsAsync((true, "Purchase Requisition created successfully.", "PR/2026-27/00001"));

        using var factory = CreateFactory(services =>
        {
            services.RemoveAll<IPurchaseRequisitionService>();
            services.AddSingleton(serviceMock.Object);
        });
        using var client = factory.CreateClient();

        var request = new CreatePRHeaderDto
        {
            PrDate = DateTime.Today,
            DepCode = "DEP1",
            Lines =
            [
                new CreatePRLineDto
                {
                    ItemCode = "ITEM1",
                    QtyRequired = 1,
                    RequiredDate = DateTime.Today.AddDays(1)
                }
            ]
        };

        var response = await client.PostAsJsonAsync("/api/v1/purchase-requisitions", request);
        var payload = await response.Content.ReadFromJsonAsync<ApiResponse<Dictionary<string, string>>>();

        response.StatusCode.Should().Be(HttpStatusCode.Created);
        payload.Should().NotBeNull();
        payload!.Success.Should().BeTrue();
        payload.Message.Should().Be("Purchase Requisition created successfully.");
        payload.Data.Should().NotBeNull();
        payload.Data!.Should().ContainKey("prNo");
        payload.Data["prNo"].Should().Be("PR/2026-27/00001");
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
