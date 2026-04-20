export interface LoginDto {
  divCode:  string
  userId:   string
  password: string
}

export type UserRole = 'Admin' | 'Manager' | 'User'

export interface AuthUser {
  id:       number
  userId:   string
  userName: string
  email:    string   // mirrors userId — kept for JWT compat
  role:     UserRole
  divCode:  string
}

export interface AuthTokens {
  accessToken: string
  refreshToken: string
}

export interface AuthResponse {
  user: AuthUser
  tokens: AuthTokens
}
