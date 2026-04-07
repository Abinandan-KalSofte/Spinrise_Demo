export interface LoginDto {
  email: string
  password: string
}

export type UserRole = 'admin' | 'user'

export interface AuthUser {
  id:      number
  email:   string
  role:    UserRole
  divCode: string
}

export interface AuthTokens {
  accessToken: string
  refreshToken: string
}

export interface AuthResponse {
  user: AuthUser
  tokens: AuthTokens
}
