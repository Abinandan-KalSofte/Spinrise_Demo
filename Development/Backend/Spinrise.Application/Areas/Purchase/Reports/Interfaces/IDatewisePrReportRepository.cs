namespace Spinrise.Application.Interfaces;

public interface IDatewisePrReportRepository
{
    Task<IEnumerable<DatewisePrReportRowDto>> GetDatewiseAsync(
        string divCode, DateTime startDate, DateTime endDate);
}
