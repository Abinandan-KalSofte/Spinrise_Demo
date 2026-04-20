namespace Spinrise.Application.DTOs.Auth;
public class AuthUserDto
{
    public int    Id       { get; set; }
    public string UserId   { get; set; } = string.Empty;   // PP_PASSWD.user_id
    public string UserName { get; set; } = string.Empty;   // PP_PASSWD.user_name
    public string Email    { get; set; } = string.Empty;   // carries UserId for JWT compat
    public string Role     { get; set; } = "User";
    public string DivCode  { get; set; } = string.Empty;
}
