import { useRouteError, isRouteErrorResponse, useNavigate } from 'react-router-dom'

function getErrorDetails(error: unknown): { status: number; title: string; description: string } {
  if (isRouteErrorResponse(error)) {
    if (error.status === 404) {
      return {
        status: 404,
        title: 'Page Not Found',
        description: "The page you're looking for doesn't exist or has been moved.",
      }
    }
    if (error.status === 403) {
      return {
        status: 403,
        title: 'Access Denied',
        description: "You don't have permission to view this page.",
      }
    }
    if (error.status === 401) {
      return {
        status: 401,
        title: 'Authentication Required',
        description: 'Please sign in to continue.',
      }
    }
    return {
      status: error.status,
      title: error.statusText || 'Request Error',
      description: typeof error.data === 'string' ? error.data : 'An error occurred processing your request.',
    }
  }

  if (error instanceof Error) {
    const isModuleLoadError = error.message.includes('Failed to fetch dynamically imported module')
    if (isModuleLoadError) {
      return {
        status: 503,
        title: 'Module Failed to Load',
        description: 'A page component could not be loaded. This usually resolves with a refresh.',
      }
    }
    return {
      status: 500,
      title: 'Unexpected Application Error',
      description: error.message,
    }
  }

  return {
    status: 500,
    title: 'Unexpected Error',
    description: 'Something went wrong. Please try again or contact support if the issue persists.',
  }
}

export default function ErrorPage() {
  const error = useRouteError()
  const navigate = useNavigate()
  const { status, title, description } = getErrorDetails(error)

  const isServerError = status >= 500

  return (
    <div style={styles.shell}>
      <div style={styles.container}>

        {/* Status badge */}
        <div style={styles.statusBadge}>
          <span style={styles.statusDot(isServerError)} />
          {isServerError ? 'System Error' : 'Client Error'}
        </div>

        {/* Code */}
        <div style={styles.code}>{status}</div>

        {/* Title */}
        <h1 style={styles.title}>{title}</h1>

        {/* Description */}
        <p style={styles.description}>{description}</p>

        {/* Divider */}
        <div style={styles.divider} />

        {/* Actions */}
        <div style={styles.actions}>
          <button style={styles.btnPrimary} onClick={() => navigate('/')}>
            Go to Dashboard
          </button>
          <button style={styles.btnSecondary} onClick={() => navigate(-1)}>
            Go Back
          </button>
          <button style={styles.btnGhost} onClick={() => window.location.reload()}>
            Reload Page
          </button>
        </div>

        {/* Footer */}
        <p style={styles.footer}>
          Spinrise ERP &nbsp;·&nbsp; If this problem persists, contact your system administrator.
        </p>
      </div>

      {/* Background ornament */}
      <div style={styles.ornamentLeft} aria-hidden="true" />
      <div style={styles.ornamentRight} aria-hidden="true" />
    </div>
  )
}

// ── Styles ────────────────────────────────────────────────────────────────────

const styles = {
  shell: {
    minHeight: '100vh',
    display: 'grid',
    placeItems: 'center',
    padding: '2rem',
    background:
      'radial-gradient(circle at top left, rgba(59,130,246,0.10), transparent 35%), ' +
      'linear-gradient(180deg, #f6f8fc 0%, #eef3fb 100%)',
    position: 'relative' as const,
    overflow: 'hidden',
    fontFamily: "Inter, system-ui, -apple-system, 'Segoe UI', sans-serif",
  },

  container: {
    position: 'relative' as const,
    zIndex: 1,
    textAlign: 'center' as const,
    maxWidth: 520,
    width: '100%',
  },

  statusBadge: {
    display: 'inline-flex',
    alignItems: 'center',
    gap: 6,
    padding: '5px 14px',
    borderRadius: 999,
    background: 'rgba(15,23,42,0.06)',
    border: '1px solid rgba(148,163,184,0.25)',
    fontSize: 12,
    fontWeight: 600,
    letterSpacing: '0.06em',
    textTransform: 'uppercase' as const,
    color: '#475569',
    marginBottom: '1.5rem',
  },

  statusDot: (isError: boolean): React.CSSProperties => ({
    width: 7,
    height: 7,
    borderRadius: '50%',
    background: isError ? '#ef4444' : '#f59e0b',
    boxShadow: `0 0 0 3px ${isError ? 'rgba(239,68,68,0.18)' : 'rgba(245,158,11,0.18)'}`,
  }),

  code: {
    fontSize: 'clamp(5rem, 18vw, 9rem)',
    fontWeight: 800,
    lineHeight: 1,
    letterSpacing: '-0.04em',
    background: 'linear-gradient(135deg, #0f172a 0%, #2563eb 55%, #0f766e 100%)',
    WebkitBackgroundClip: 'text',
    WebkitTextFillColor: 'transparent',
    backgroundClip: 'text',
    marginBottom: '1rem',
  },

  title: {
    fontSize: 'clamp(1.25rem, 3vw, 1.75rem)',
    fontWeight: 700,
    color: '#0f172a',
    margin: '0 0 0.75rem',
    letterSpacing: '-0.02em',
  },

  description: {
    fontSize: '0.975rem',
    lineHeight: 1.7,
    color: '#475569',
    margin: '0 auto',
    maxWidth: 420,
  },

  divider: {
    height: 1,
    background: 'rgba(148,163,184,0.2)',
    margin: '2rem 0',
  },

  actions: {
    display: 'flex',
    justifyContent: 'center',
    flexWrap: 'wrap' as const,
    gap: '0.75rem',
    marginBottom: '2rem',
  },

  btnPrimary: {
    padding: '10px 22px',
    borderRadius: 10,
    border: 'none',
    background: 'linear-gradient(135deg, #1d4ed8, #0f766e)',
    color: '#ffffff',
    fontSize: '0.9rem',
    fontWeight: 600,
    cursor: 'pointer',
    boxShadow: '0 4px 14px rgba(29,78,216,0.25)',
    transition: 'opacity 0.15s ease',
    fontFamily: 'inherit',
  },

  btnSecondary: {
    padding: '10px 22px',
    borderRadius: 10,
    border: '1.5px solid rgba(148,163,184,0.35)',
    background: '#ffffff',
    color: '#334155',
    fontSize: '0.9rem',
    fontWeight: 600,
    cursor: 'pointer',
    transition: 'background 0.15s ease',
    fontFamily: 'inherit',
  },

  btnGhost: {
    padding: '10px 22px',
    borderRadius: 10,
    border: 'none',
    background: 'transparent',
    color: '#64748b',
    fontSize: '0.9rem',
    fontWeight: 500,
    cursor: 'pointer',
    textDecoration: 'underline' as const,
    textDecorationColor: 'rgba(100,116,139,0.4)',
    textUnderlineOffset: 3,
    fontFamily: 'inherit',
  },

  footer: {
    fontSize: '0.775rem',
    color: '#94a3b8',
    letterSpacing: '0.02em',
  },

  ornamentLeft: {
    position: 'absolute' as const,
    top: '-120px',
    left: '-120px',
    width: 380,
    height: 380,
    borderRadius: '50%',
    background: 'radial-gradient(circle, rgba(37,99,235,0.07) 0%, transparent 70%)',
    pointerEvents: 'none' as const,
  },

  ornamentRight: {
    position: 'absolute' as const,
    bottom: '-100px',
    right: '-100px',
    width: 320,
    height: 320,
    borderRadius: '50%',
    background: 'radial-gradient(circle, rgba(15,118,110,0.07) 0%, transparent 70%)',
    pointerEvents: 'none' as const,
  },
}
