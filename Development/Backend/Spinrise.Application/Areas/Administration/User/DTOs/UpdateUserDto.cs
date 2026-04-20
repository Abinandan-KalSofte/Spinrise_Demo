using System.ComponentModel.DataAnnotations;

namespace Spinrise.Application.DTOs.Users
{
    /// <summary>
    /// DTO used to update an existing user.
    /// </summary>
    public class UpdateUserDto
    {
        /// <summary>
        /// Unique identifier of the user.
        /// </summary>
        [Range(1, int.MaxValue, ErrorMessage = "A valid user id is required")]
        public int Id { get; set; }

        /// <summary>
        /// Full name of the user.
        /// </summary>
        [Required(ErrorMessage = "Name is required")]
        [StringLength(100, MinimumLength = 2, ErrorMessage = "Name must be between 2 and 100 characters")]
        public string Name { get; set; } = string.Empty;

        /// <summary>
        /// Email address of the user.
        /// </summary>
        [Required(ErrorMessage = "Email is required")]
        [EmailAddress(ErrorMessage = "Invalid email format")]
        [StringLength(255, ErrorMessage = "Email must not exceed 255 characters")]
        public string Email { get; set; } = string.Empty;
    }
}
