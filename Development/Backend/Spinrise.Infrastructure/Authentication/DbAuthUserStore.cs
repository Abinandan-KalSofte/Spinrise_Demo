using Dapper;
using Spinrise.Infrastructure.Data;
using Spinrise.Shared;
using System.Data;

namespace Spinrise.Infrastructure.Authentication;

/// <summary>
/// Database-backed user store that validates credentials against dbo.PP_PASSWD.
/// Replaces the static config-based AuthUserStore.
/// Password comparison is plain-text (legacy system constraint).
/// </summary>
public class DbAuthUserStore : IAuthUserStore
{
    private readonly IDbConnectionFactory _connectionFactory;

    public DbAuthUserStore(IDbConnectionFactory connectionFactory)
    {
        _connectionFactory = connectionFactory;
    }

    public async Task<AuthUserDto?> ValidateCredentialsAsync(
        string userName, string divCode, string password)
    {
        using var connection = _connectionFactory.CreateConnection();

        var record = await connection.QueryFirstOrDefaultAsync<PpPasswdRecord>(
            StoredProcedures.Auth.ValidateUser,
            new { DivCode = divCode, UserName = userName, Password = password },
            commandType: CommandType.StoredProcedure);

        return record is null ? null : ToDto(record);
    }

    public async Task<AuthUserDto?> GetByUserIdAsync(string userId, string divCode)
    {
        using var connection = _connectionFactory.CreateConnection();

        var record = await connection.QueryFirstOrDefaultAsync<PpPasswdRecord>(
            "SELECT divcode AS DivCode, user_id AS UserId, user_name AS UserName, alevel AS ALevel " +
            "FROM dbo.PP_PASSWD " +
            "WHERE user_id = @UserId AND divcode = @DivCode AND UPPER(ISNULL(activeflg,'N')) = 'Y'",
            new { UserId = userId, DivCode = divCode });

        return record is null ? null : ToDto(record);
    }

    // ── Helpers ───────────────────────────────────────────────────────────────────

    private static AuthUserDto ToDto(PpPasswdRecord r) => new()
    {
        Id       = 0,
        UserId   = r.UserId.Trim(),
        UserName = r.UserName?.Trim() ?? string.Empty,
        Email    = r.UserId.Trim(),   // stored in email claim for refresh-token lookup
        Role     = MapRole(r.ALevel),
        DivCode  = r.DivCode.Trim(),
    };

    private static string MapRole(decimal alevel) => alevel switch
    {
        1 => UserRoles.Admin,
        2 => UserRoles.Manager,
        _ => UserRoles.User
    };

    // Internal record — not exposed outside this class.
    private sealed class PpPasswdRecord
    {
        public string  DivCode  { get; set; } = string.Empty;
        public string  UserId   { get; set; } = string.Empty;
        public string? UserName { get; set; }
        public decimal ALevel   { get; set; }
    }
}
