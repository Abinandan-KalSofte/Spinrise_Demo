namespace Spinrise.Application.Extensions;

public static class UnitOfWorkExtensions
{
    public delegate Task<T> TransactionalOperation<T>();
    public delegate Task TransactionalOperationVoid();

    public static async Task<T> ExecuteTransactionalAsync<T>(
        this IUnitOfWork unitOfWork,
        TransactionalOperation<T> operation,
        bool useTransaction = true)
    {
        await unitOfWork.BeginAsync(startTransaction: useTransaction);
        try
        {
            var result = await operation();
            await unitOfWork.CommitAsync();
            return result;
        }
        catch
        {
            await unitOfWork.RollbackAsync();
            throw;
        }
    }

    public static async Task ExecuteTransactionalAsync(
        this IUnitOfWork unitOfWork,
        TransactionalOperationVoid operation,
        bool useTransaction = true)
    {
        await unitOfWork.BeginAsync(startTransaction: useTransaction);
        try
        {
            await operation();
            await unitOfWork.CommitAsync();
        }
        catch
        {
            await unitOfWork.RollbackAsync();
            throw;
        }
    }
}
