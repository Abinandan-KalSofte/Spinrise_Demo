import { useState, useEffect, useRef } from 'react'
import { useApi } from '@/shared/hooks/useApi'
import { departmentService } from '../services/departmentService'
import type { DepartmentOption } from '../types'

export function useDepartments(divCode: string) {
  const [departments, setDepartments] = useState<DepartmentOption[]>([])
  const [searchTerm, setSearchTerm] = useState<string>('')

  // Refs so the useApi callback always reads the latest values without being a dep
  const divCodeRef = useRef(divCode)
  divCodeRef.current = divCode
  const searchTermRef = useRef(searchTerm)
  searchTermRef.current = searchTerm

  const { data, loading, error, execute: fetchDepartments } = useApi(
    () => departmentService.getActiveDepartments(divCodeRef.current, searchTermRef.current || undefined),
  )

  useEffect(() => {
    if (data) setDepartments(data)
  }, [data])

  // Fetch when divCode changes or on initial load
  useEffect(() => {
    if (divCode) {
      void fetchDepartments()
    }
  }, [divCode]) // fetchDepartments is now stable — safe to omit

  // Debounced search refetch
  useEffect(() => {
    if (!divCode || !searchTerm) return
    const id = setTimeout(() => { void fetchDepartments() }, 300)
    return () => clearTimeout(id)
  }, [searchTerm, divCode]) // fetchDepartments is stable — safe to omit

  return {
    departments,
    loading,
    error,
    searchTerm,
    setSearchTerm,
    refetch: fetchDepartments,
  }
}
