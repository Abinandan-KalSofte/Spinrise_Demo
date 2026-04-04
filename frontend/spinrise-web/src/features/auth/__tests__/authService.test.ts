import { describe, expect, it } from 'vitest'
import { authService } from '../services/authService'

describe('authService', () => {
  it('maps login responses into a normalized auth session', async () => {
    const result = await authService.login({
      email: 'admin@spinrise.com',
      password: 'password',
    })

    expect(result.user).toEqual({
      id: 1,
      email: 'admin@spinrise.com',
      role: 'admin',
    })
    expect(result.tokens).toEqual({
      accessToken: 'test-access-token',
      refreshToken: 'test-refresh-token',
    })
  })
})
