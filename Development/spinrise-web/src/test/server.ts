import { setupServer } from 'msw/node'
import { authHandlers } from './handlers/authHandlers'
import { prHandlers } from './handlers/prHandlers'

export const server = setupServer(...authHandlers, ...prHandlers)
