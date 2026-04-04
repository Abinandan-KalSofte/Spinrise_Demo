import axios from 'axios'

const DEFAULT_ERROR_MESSAGE = 'Something went wrong. Please try again.'

export class AppError extends Error {
  status?: number

  constructor(message: string, status?: number) {
    super(message)
    this.name = 'AppError'
    this.status = status
  }
}

export function getErrorMessage(error: unknown): string {
  if (error instanceof AppError) {
    return error.message
  }

  if (axios.isAxiosError(error)) {
    const apiMessage = error.response?.data?.message

    if (typeof apiMessage === 'string' && apiMessage.trim()) {
      return apiMessage
    }

    if (error.response?.status === 401) {
      return 'Your session has expired. Please sign in again.'
    }

    if (error.response?.status === 403) {
      return 'You do not have permission to perform this action.'
    }

    if (error.response?.status && error.response.status >= 500) {
      return 'The server is having trouble right now. Please try again later.'
    }
  }

  if (error instanceof Error && error.message.trim()) {
    return error.message
  }

  return DEFAULT_ERROR_MESSAGE
}

export function handleApiError(error: unknown): AppError {
  if (error instanceof AppError) {
    return error
  }

  if (axios.isAxiosError(error)) {
    return new AppError(getErrorMessage(error), error.response?.status)
  }

  return new AppError(getErrorMessage(error))
}
