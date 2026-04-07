import { useState } from 'react'
import { App, Form } from 'antd'
import { CheckCircleOutlined } from '@ant-design/icons'
import dayjs from 'dayjs'
import type { PRItem, CreatePRDto } from '../types'
import { generatePRNo } from '../data/dummy'
import { purchaseRequisitionService } from '../services/purchaseRequisitionService'
import {
  PRHeroBanner,
  PRHeaderForm,
  PRItemEntryForm,
  PRItemsGrid,
  PRFooterActions,
  PREditItemModal,
} from '../components'

function uid(): string {
  return `${Date.now()}-${Math.random().toString(36).slice(2, 7)}`
}

export default function PurchaseRequisitionPage() {
  const [headerForm] = Form.useForm()
  const [itemForm] = Form.useForm()
  const [editForm] = Form.useForm()
  const { message: messageApi } = App.useApp()

  const [prNo] = useState(generatePRNo)
  const [itemsGrid, setItemsGrid] = useState<PRItem[]>([])
  const [editingItem, setEditingItem] = useState<PRItem | null>(null)
  const [editModalOpen, setEditModalOpen] = useState(false)
  const [saving, setSaving] = useState(false)

  const handleAddItem = async () => {
    try {
      const values = await itemForm.validateFields()
      const newItem: PRItem = {
        id: uid(),
        itemCode: values.itemCode,
        itemName: values.itemName,
        uom: values.uom,
        rate: values.rate ?? 0,
        currentStock: values.currentStock ?? 0,
        quantityRequired: values.quantityRequired,
        costCentre: values.costCentre ?? '',
        budgetGroup: values.budgetGroup ?? '',
        machineNo: values.machineNo ?? '',
        machineModel: values.machineModel ?? '',
        machineDescription: values.machineDescription ?? '',
        requiredDate: values.requiredDate ? dayjs(values.requiredDate).format('YYYY-MM-DD') : '',
        place: values.place ?? '',
        approxCost: values.approxCost ?? 0,
        remarks: values.remarks ?? '',
        sampleFlag: values.sampleFlag ?? false,
      }
      setItemsGrid((prev) => [...prev, newItem])
      itemForm.resetFields()
      void messageApi.success('Item added to requisition.')
    } catch {
      void messageApi.error('Please fill all required fields before adding.')
    }
  }

  const handleDeleteItem = (id: string) => {
    setItemsGrid((prev) => prev.filter((item) => item.id !== id))
    void messageApi.success('Item removed.')
  }

  const handleEditItem = (record: PRItem) => {
    setEditingItem(record)
    editForm.setFieldsValue({
      ...record,
      requiredDate: record.requiredDate ? dayjs(record.requiredDate) : null,
    })
    setEditModalOpen(true)
  }

  const handleEditSave = async () => {
    try {
      const values = await editForm.validateFields()
      setItemsGrid((prev) =>
        prev.map((item) =>
          item.id === editingItem?.id
            ? {
                ...item,
                ...values,
                requiredDate: values.requiredDate
                  ? dayjs(values.requiredDate).format('YYYY-MM-DD')
                  : '',
              }
            : item,
        ),
      )
      setEditModalOpen(false)
      setEditingItem(null)
      void messageApi.success('Item updated successfully.')
    } catch {
      // antd shows inline validation errors
    }
  }

  const handleSavePR = async () => {
    try {
      await headerForm.validateFields()
      if (itemsGrid.length === 0) {
        void messageApi.warning('Add at least one item before saving.')
        return
      }
      setSaving(true)
      const dto: CreatePRDto = {
        divCode: '01',
        prDate: dayjs(headerForm.getFieldValue('prDate') as dayjs.Dayjs).toISOString(),
        depCode: headerForm.getFieldValue('departmentCode') as string,
        section: headerForm.getFieldValue('section') as string | null,
        subCostCode: headerForm.getFieldValue('subCostCentre') as string | null,
        iType: headerForm.getFieldValue('orderType') as string | null,
        reqName: headerForm.getFieldValue('requesterCode') as string | null,
        refNo: headerForm.getFieldValue('refNo') as string | null,
        poGroupCode: headerForm.getFieldValue('poGroupCode') as string | null,
        scopeCode: headerForm.getFieldValue('scopeCode') as string | null,
        lines: itemsGrid.map((item) => ({
          itemCode: item.itemCode,
          qtyRequired: item.quantityRequired,
          requiredDate: item.requiredDate || null,
          machineNo: item.machineNo || null,
          costCentreCode: item.costCentre || null,
          budgetGroupCode: item.budgetGroup || null,
          place: item.place || null,
          approxCost: item.approxCost || null,
          remarks: item.remarks || null,
          isSample: item.sampleFlag,
        })),
      }
      const result = await purchaseRequisitionService.create(dto)
      setSaving(false)
      void messageApi.success({
        content: `Purchase Requisition ${result.prNo} created successfully.`,
        icon: <CheckCircleOutlined style={{ color: '#22c55e' }} />,
      })
      headerForm.resetFields()
      setItemsGrid([])
    } catch (err: unknown) {
      setSaving(false)
      const msg = (err as { message?: string })?.message ?? 'Failed to save Purchase Requisition.'
      void messageApi.error(msg)
    }
  }

  const handleReset = () => {
    headerForm.resetFields()
    itemForm.resetFields()
    setItemsGrid([])
    void messageApi.info('Form cleared.')
  }

  return (
    <div className="pr-page">
      <PRHeroBanner prNo={prNo} />

      <PRHeaderForm form={headerForm} />

      <PRItemEntryForm form={itemForm} onAddItem={() => void handleAddItem()} />

      <PRItemsGrid
        items={itemsGrid}
        onEdit={handleEditItem}
        onDelete={handleDeleteItem}
      />

      <PRFooterActions
        itemCount={itemsGrid.length}
        saving={saving}
        onSave={() => void handleSavePR()}
        onReset={handleReset}
      />

      <PREditItemModal
        open={editModalOpen}
        editingItem={editingItem}
        form={editForm}
        onSave={() => void handleEditSave()}
        onCancel={() => {
          setEditModalOpen(false)
          setEditingItem(null)
        }}
      />
    </div>
  )
}
