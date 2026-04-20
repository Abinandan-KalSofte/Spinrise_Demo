namespace Spinrise.Shared;

/// <summary>Custom JWT claim names used across the Spinrise platform.</summary>
public static class SpinriseClaims
{
    /// <summary>The division code the authenticated user belongs to.</summary>
    public const string DivCode  = "div_code";

    /// <summary>The legacy user_id from PP_PASSWD (also stored in the email claim).</summary>
    public const string UserId   = "user_id";

    /// <summary>The display name from PP_PASSWD.user_name.</summary>
    public const string UserName = "user_name";
}
