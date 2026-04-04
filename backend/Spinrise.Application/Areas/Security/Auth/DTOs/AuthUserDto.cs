namespace Spinrise.Application.DTOs.Auth;
public class AuthUserDto
{
    public int Id { get; set; }
    public string Email { get; set; } = string.Empty;
    public string Role { get; set; } = "user";
}
