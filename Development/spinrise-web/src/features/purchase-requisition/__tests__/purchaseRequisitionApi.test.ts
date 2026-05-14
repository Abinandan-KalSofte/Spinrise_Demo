/**
 * purchaseRequisitionApi — Unit Tests
 *
 * Uses MSW (via src/test/server.ts) to intercept HTTP calls.
 * No real network requests are made.
 *
 * Critical paths covered:
 *  - preChecks    → GET /purchase-requisitions/pre-checks
 *  - getPaginated → GET /purchase-requisitions/paginated
 *  - getSummary   → GET /purchase-requisitions/summary
 *  - getById      → GET /purchase-requisitions/:prNo
 *  - create       → POST /purchase-requisitions
 *  - deletePR     → DELETE /purchase-requisitions/:prNo
 */

import { describe, it, expect, beforeEach } from 'vitest'
import { server } from '../../../test/server'
import { http, HttpResponse } from 'msw'
import { purchaseRequisitionApi } from '../api/purchaseRequisitionApi'

describe('purchaseRequisitionApi', () => {
  describe('preChecks', () => {
    it('returns the pre-check flags from the backend', async () => {
      const result = await purchaseRequisitionApi.preChecks()

      expect(result.itemMasterExists).toBe(true)
      expect(result.departmentExists).toBe(true)
      expect(result.docNumberConfigured).toBe(true)
    })
  })

  describe('getPaginated', () => {
    it('returns an empty paged result when no data exists', async () => {
      const result = await purchaseRequisitionApi.getPaginated()

      expect(result.items).toEqual([])
      expect(result.totalCount).toBe(0)
      expect(result.page).toBe(1)
    })

    it('sends filter params in the query string', async () => {
      let capturedUrl = ''
      server.use(
        http.get(/\/purchase-requisitions\/paginated/, ({ request }) => {
          capturedUrl = request.url
          return HttpResponse.json({
            success: true,
            message: 'ok',
            data: { items: [], totalCount: 0, page: 1, pageSize: 20, totalPages: 0 },
          })
        }),
      )

      await purchaseRequisitionApi.getPaginated({ status: 'OPEN', page: 2 })

      expect(capturedUrl).toContain('status=OPEN')
      expect(capturedUrl).toContain('page=2')
    })
  })

  describe('getSummary', () => {
    it('returns status count summary', async () => {
      const result = await purchaseRequisitionApi.getSummary()

      expect(result.totalCount).toBe(5)
      expect(result.openCount).toBe(3)
    })
  })

  describe('getById', () => {
    it('returns the PR header for a known prNo', async () => {
      const result = await purchaseRequisitionApi.getById(1)

      expect(result.prNo).toBe(1)
      expect(result.prStatus).toBe('OPEN')
    })

    it('throws when the backend returns a 404', async () => {
      server.use(
        http.get(/\/purchase-requisitions\/999$/, () =>
          HttpResponse.json(
            { success: false, message: 'Purchase Requisition not found.' },
            { status: 404 },
          ),
        ),
      )

      await expect(purchaseRequisitionApi.getById(999)).rejects.toThrow()
    })
  })

  describe('create', () => {
    it('returns the generated prNo on success', async () => {
      const result = await purchaseRequisitionApi.create({
        prDate:  new Date().toISOString().split('T')[0],
        depCode: 'DEP1',
        reqName: 'Requester',
        lines: [{ itemCode: 'ITEM1', qtyRequired: 1 }],
      })

      expect(result.prNo).toBe(100)
    })

    it('throws when the backend rejects the payload', async () => {
      server.use(
        http.post(/\/purchase-requisitions$/, () =>
          HttpResponse.json(
            { success: false, message: 'Department not found.' },
            { status: 400 },
          ),
        ),
      )

      await expect(
        purchaseRequisitionApi.create({
          prDate:  new Date().toISOString().split('T')[0],
          depCode: 'INVALID',
          reqName: 'Requester',
          lines:   [],
        }),
      ).rejects.toThrow()
    })
  })

  describe('deletePR', () => {
    it('completes without error for a valid delete', async () => {
      await expect(
        purchaseRequisitionApi.deletePR(1, 'DAMAGE'),
      ).resolves.not.toThrow()
    })
  })
})
