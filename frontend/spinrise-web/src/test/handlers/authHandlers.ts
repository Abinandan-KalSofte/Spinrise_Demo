import { http, HttpResponse } from 'msw'

export const authHandlers = [
  http.post('/api/v1/auth/login', async ({ request }) => {
    const { email } = (await request.json()) as { email: string }

    return HttpResponse.json({
      success: true,
      message: 'Login successful.',
      data: {
        user: {
          id: 1,
          email,
          role: email.includes('admin') ? 'admin' : 'user',
        },
        tokens: {
          accessToken: 'test-access-token',
          refreshToken: 'test-refresh-token',
        },
      },
    })
  }),
  http.post('/api/v1/auth/refresh', async ({ request }) => {
    const { refreshToken } = (await request.json()) as { refreshToken: string }

    return HttpResponse.json({
      success: true,
      message: 'Token refreshed successfully.',
      data: {
        user: {
          id: 1,
          email: 'user@example.com',
          role: 'user',
        },
        tokens: {
          accessToken: `${refreshToken}-rotated`,
          refreshToken,
        },
      },
    })
  }),
  http.post('/api/v1/auth/logout', () =>
    HttpResponse.json({ success: true, message: 'Logout successful.' }),
  ),
]
