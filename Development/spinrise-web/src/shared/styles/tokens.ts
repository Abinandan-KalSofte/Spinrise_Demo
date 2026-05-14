// ── Color Palette — Blueprint v1.1 §2.1 ──────────────────────────────────────
export const COLOR_PRIMARY        = '#185FA5'   // Primary buttons, links, active menu
export const COLOR_PRIMARY_DARK   = '#0C447C'   // Headings, hover state, active sidebar border
export const COLOR_PRIMARY_LIGHT  = '#E6F1FB'   // Selected row highlight, active input border tint
export const COLOR_BG             = '#F5F5F3'   // App/page background
export const COLOR_SURFACE_ALT    = '#FAFAF8'   // Section header bands, alternate table rows
export const COLOR_BORDER         = '#E2E2E2'   // Field borders, table separators, dividers
export const COLOR_TEXT_900       = '#1A1A1A'   // Primary body text, labels, data
export const COLOR_TEXT_600       = '#4A4A4A'   // Secondary labels, helper text
export const COLOR_TEXT_400       = '#888888'   // Placeholder text, metadata
export const COLOR_SUCCESS        = '#3B6D11'   // Approved status, positive values
export const COLOR_SUCCESS_LIGHT  = '#EAF3DE'   // Success badge background
export const COLOR_WARNING        = '#BA7517'   // Warning alerts, attention states
export const COLOR_WARNING_LIGHT  = '#FAEEDA'   // Warning badge background, note boxes
export const COLOR_ERROR          = '#A32D2D'   // Validation errors, rejected status
export const COLOR_ERROR_LIGHT    = '#FCEBEB'   // Error badge background, error field tint
export const COLOR_PURPLE         = '#722ED1'   // PO Raised status badge
export const COLOR_PURPLE_LIGHT   = '#F0E6FB'   // PO Raised badge background

// ── Spacing — Blueprint §2.3 (4px base unit) ─────────────────────────────────
export const SP_1 = 4    // Icon padding, tight badge padding
export const SP_2 = 8    // Field internal padding top/bottom, inline gap
export const SP_3 = 12   // Label-to-field gap, small section gap
export const SP_4 = 16   // Field horizontal padding, card padding
export const SP_6 = 24   // Section body padding, major content gap
export const SP_8 = 32   // Between form sections, card gap

// ── Field & Layout Sizes — Blueprint §2.3 ────────────────────────────────────
export const FIELD_HEIGHT       = 32    // Standard ERP input, date picker, select (compact)
export const FIELD_HEIGHT_SMALL = 28    // Grid cell inputs, compact toolbar controls
export const ROW_HEIGHT_GRID    = 32    // Transaction line item grid rows
export const TOP_NAV_HEIGHT     = 48    // Fixed application header bar
export const SIDEBAR_EXPANDED   = 220   // Default sidebar width
export const SIDEBAR_COLLAPSED  = 60    // Collapsed icon-only width
export const PAGE_MAX_WIDTH     = 1280  // Maximum layout width on wide screens

// ── Typography — Blueprint §2.2 ──────────────────────────────────────────────
export const FONT_PAGE_TITLE = { size: 22, weight: 800 }   // H1 — Page Title
export const FONT_H2         = { size: 16, weight: 700 }   // Section Heading
export const FONT_H3         = { size: 14, weight: 600 }   // Sub-heading
export const FONT_BODY       = { size: 13, weight: 400 }   // Body text
export const FONT_LABEL      = { size: 12, weight: 600 }   // Field labels
export const FONT_CAPTION    = { size: 11, weight: 400 }   // Caption / metadata
export const FONT_TABLE_HDR  = { size: 11, weight: 600 }   // Table header cells
export const FONT_TABLE_DATA = { size: 12, weight: 400 }   // Table data cells
export const FONT_MONO       = { size: 11, weight: 500 }   // Reference numbers (JetBrains Mono)
export const FONT_BADGE      = { size: 11, weight: 600 }   // Status badges

// ── Card — Blueprint §2.3 ────────────────────────────────────────────────────
export const CARD_SHADOW        = '0 1px 4px rgba(0,0,0,0.06)'
export const CARD_BORDER_RADIUS = 8
export const CARD_BORDER        = `1px solid ${COLOR_BORDER}`

// ── KPI Card — Blueprint §4.1 ────────────────────────────────────────────────
export const KPI_CARD_MAX_HEIGHT = 72    // Cards must not exceed this height
export const KPI_CARD_PADDING    = '12px 16px'
export const KPI_ICON_BOX_SIZE   = 36
export const KPI_ICON_BOX_RADIUS = 6

// ── Label (kept for any legacy imports) ──────────────────────────────────────
export const LABEL_FONT_SIZE   = FONT_LABEL.size
export const LABEL_FONT_WEIGHT = FONT_LABEL.weight

// ── Color aliases (semantic names used in components) ────────────────────────
export const COLOR_TEXT_PRIMARY   = COLOR_TEXT_900   // '#1A1A1A'
export const COLOR_TEXT_SECONDARY = COLOR_TEXT_600   // '#4A4A4A'

// ── Card padding (generic, distinct from KPI card) ───────────────────────────
export const CARD_PADDING = '16px 20px'

// ── Section card title typography ────────────────────────────────────────────
export const SECTION_TITLE_COLOR          = '#475569'
export const SECTION_TITLE_FONT_SIZE      = 11
export const SECTION_TITLE_FONT_WEIGHT    = 700
export const SECTION_TITLE_LETTER_SPACING = '0.06em'

// ── Document number display ───────────────────────────────────────────────────
export const DOC_NUMBER_COLOR       = COLOR_PRIMARY   // '#185FA5'
export const DOC_NUMBER_FONT_SIZE   = 13
export const DOC_NUMBER_FONT_WEIGHT = 700

// ── Page title bar ────────────────────────────────────────────────────────────
export const TITLE_BAR_TOP     = 0
export const TITLE_BAR_Z       = 100
export const TITLE_BAR_HEIGHT  = 52
export const TITLE_BAR_PADDING = '0 20px'
export const TITLE_BAR_BORDER  = `1px solid ${COLOR_BORDER}`
export const TITLE_BAR_SHADOW  = '0 1px 4px rgba(0,0,0,0.06)'

// ── Accent bar (left decorative strip in title bar) ───────────────────────────
export const ACCENT_BAR_COLOR  = COLOR_PRIMARY   // '#185FA5'
export const ACCENT_BAR_WIDTH  = 4
export const ACCENT_BAR_HEIGHT = 24
export const ACCENT_BAR_RADIUS = 2

// ── Workflow steps ────────────────────────────────────────────────────────────
export const STEPS_MAX_WIDTH = 480
