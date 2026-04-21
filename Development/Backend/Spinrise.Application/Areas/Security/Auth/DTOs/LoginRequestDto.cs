using System.ComponentModel.DataAnnotations;
namespace Spinrise.Application.DTOs.Auth;
public class LoginRequestDto
{
    [Required]
    [StringLength(2, MinimumLength = 1)]
    public string DivCode { get; set; } = string.Empty;

    [Required]
    [StringLength(100, MinimumLength = 1)]
    public string UserName { get; set; } = string.Empty;

    [Required]
    public string Password { get; set; } = string.Empty;
}
