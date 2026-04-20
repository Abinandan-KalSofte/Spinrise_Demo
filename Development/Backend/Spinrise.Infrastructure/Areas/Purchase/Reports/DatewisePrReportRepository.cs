using Dapper;
using Spinrise.Shared;
using System.Data;

namespace Spinrise.Infrastructure.Areas.Purchase.Reports;

public class DatewisePrReportRepository : IDatewisePrReportRepository
{
    private readonly IUnitOfWork _uow;

    public DatewisePrReportRepository(IUnitOfWork uow) => _uow = uow;

    public async Task<IEnumerable<DatewisePrReportRowDto>> GetDatewiseAsync(
        string divCode, DateTime startDate, DateTime endDate)
    {
        return await _uow.Connection!.QueryAsync<DatewisePrReportRowDto>(
            StoredProcedures.PurchaseReport.GetDatewiseRequisitionReport,
            new { DivCode = divCode, StartDate = startDate, EndDate = endDate },
            transaction:  _uow.Transaction,
            commandType:  CommandType.StoredProcedure);
    }
}
