using Spinrise.Application.Interfaces;

namespace Spinrise.Infrastructure.Data;

public class JATUnitOfWork : UnitOfWork, IJATUnitOfWork
{
    public JATUnitOfWork(IJATDbConnectionFactory factory) : base(factory) { }
}
