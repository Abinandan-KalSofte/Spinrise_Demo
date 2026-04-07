import { apiHelpers } from '@/shared/api/client'
import type { DepartmentOption } from '../types'

interface DepartmentResponseDto {
  depCode: string
  depName: string
}

export const departmentService = {
  async getActiveDepartments(divCode: string, searchTerm?: string): Promise<DepartmentOption[]> {
    const params = new URLSearchParams({ divCode })
    if (searchTerm) {
      params.append('searchTerm', searchTerm)
    }

    const response = await apiHelpers.get<DepartmentResponseDto[]>(`/departments/active?${params.toString()}`)

    // Map backend response to frontend interface
    return response.map(dept => ({
      code: dept.depCode,
      name: dept.depName,
    }))
  },
}