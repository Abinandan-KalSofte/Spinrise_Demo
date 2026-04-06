import type {
  DepartmentOption,
  ItemGroupOption,
  ItemOption,
  MachineOption,
  POGroupOption,
  RequesterOption,
  ScopeOption,
} from '../types'

export const departments: DepartmentOption[] = [
  { code: 'DEPT001', name: 'Engineering & Maintenance' },
  { code: 'DEPT002', name: 'Finance & Accounting' },
  { code: 'DEPT003', name: 'Human Resources' },
  { code: 'DEPT004', name: 'Information Technology' },
  { code: 'DEPT005', name: 'Operations & Production' },
  { code: 'DEPT006', name: 'Quality Assurance' },
  { code: 'DEPT007', name: 'Supply Chain & Logistics' },
]

export const poGroups: POGroupOption[] = [
  { code: 'PG001', name: 'Electrical Components' },
  { code: 'PG002', name: 'Mechanical Spare Parts' },
  { code: 'PG003', name: 'IT Equipment & Peripherals' },
  { code: 'PG004', name: 'Office & Stationery Supplies' },
  { code: 'PG005', name: 'Safety & PPE Equipment' },
  { code: 'PG006', name: 'Civil & Structural Materials' },
]

export const itemGroups: ItemGroupOption[] = [
  { code: 'IG001', name: 'Consumables' },
  { code: 'IG002', name: 'Spare Parts & Components' },
  { code: 'IG003', name: 'Raw Materials' },
  { code: 'IG004', name: 'Capital Items' },
  { code: 'IG005', name: 'Tools & Equipment' },
]

export const orderTypes = ['Standard', 'Urgent', 'Emergency', 'Capital', 'Service', 'AMC']

export const items: ItemOption[] = [
  { code: 'ITM001', name: 'Bearing 6205 ZZ', uom: 'PCS', currentStock: 45, rate: 120 },
  { code: 'ITM002', name: 'V-Belt A40', uom: 'PCS', currentStock: 12, rate: 85 },
  { code: 'ITM003', name: 'Electric Motor 5HP 3Ph', uom: 'NOS', currentStock: 3, rate: 12500 },
  { code: 'ITM004', name: 'Lubricant Oil SAE 40', uom: 'LTR', currentStock: 200, rate: 95 },
  { code: 'ITM005', name: 'Safety Gloves (Anti-Cut)', uom: 'PAIR', currentStock: 30, rate: 45 },
  { code: 'ITM006', name: 'Allen Key Set (Metric)', uom: 'SET', currentStock: 8, rate: 350 },
  { code: 'ITM007', name: 'PVC Pipe 2 inch Schedule 40', uom: 'MTR', currentStock: 75, rate: 65 },
  { code: 'ITM008', name: 'Digital Multimeter Fluke', uom: 'NOS', currentStock: 5, rate: 2800 },
  { code: 'ITM009', name: 'Hydraulic Oil ISO 46', uom: 'LTR', currentStock: 150, rate: 110 },
  { code: 'ITM010', name: 'Chain Coupling 1-1/2 Bore', uom: 'SET', currentStock: 6, rate: 780 },
]

export const machines: MachineOption[] = [
  { code: 'MCH001', model: 'CNC-5000', description: 'CNC Milling Machine' },
  { code: 'MCH002', model: 'PRS-300T', description: 'Hydraulic Press 300 Ton' },
  { code: 'MCH003', model: 'CMP-75HP', description: 'Air Compressor 75HP Screw Type' },
  { code: 'MCH004', model: 'GEN-250KVA', description: 'DG Set 250 KVA' },
  { code: 'MCH005', model: 'LATHE-16', description: 'Lathe Machine 16ft Bed' },
  { code: 'MCH006', model: 'WLD-400A', description: 'MIG Welding Machine 400A' },
  { code: 'MCH007', model: 'CONV-150', description: 'Conveyor Belt System 150mpm' },
]

export const requesters: RequesterOption[] = [
  { code: 'REQ001', name: 'Rajesh Kumar' },
  { code: 'REQ002', name: 'Priya Sharma' },
  { code: 'REQ003', name: 'Anand Verma' },
  { code: 'REQ004', name: 'Sunita Patel' },
  { code: 'REQ005', name: 'Mohammed Farooq' },
]

export const scopes: ScopeOption[] = [
  { code: 'SC001', name: 'Preventive Maintenance' },
  { code: 'SC002', name: 'Breakdown Maintenance' },
  { code: 'SC003', name: 'Capital Projects' },
  { code: 'SC004', name: 'General Operations' },
  { code: 'SC005', name: 'Shutdown Maintenance' },
]

export const costCentres = ['CC-MFG-01', 'CC-MFG-02', 'CC-ENG-01', 'CC-IT-01', 'CC-HR-01', 'CC-FIN-01']

export const budgetGroups = ['BG-OPEX', 'BG-CAPEX', 'BG-MAINT', 'BG-PROJ', 'BG-ADMIN']

export function generatePRNo(): string {
  const year = new Date().getFullYear()
  const seq = String(Math.floor(Math.random() * 900) + 100)
  return `PR-${year}-${seq}`
}
