namespace Spinrise.Application.DTOs.Users
{
    internal static class UserMappings
    {
        public static UserResponseDto ToResponseDto(this User user)
        {
            return new UserResponseDto
            {
                Id = user.Id,
                Name = user.Name,
                Email = user.Email
            };
        }

        public static User ToEntity(this CreateUserDto dto)
        {
            return new User
            {
                Name = dto.Name.Trim(),
                Email = dto.Email.Trim()
            };
        }

        public static User ToEntity(this UpdateUserDto dto)
        {
            return new User
            {
                Id = dto.Id,
                Name = dto.Name.Trim(),
                Email = dto.Email.Trim()
            };
        }
    }
}
