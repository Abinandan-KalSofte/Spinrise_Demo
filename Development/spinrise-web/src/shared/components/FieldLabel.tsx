import styles from './FieldLabel.module.css'

interface FieldLabelProps {
  text:      string
  required?: boolean
  htmlFor?:  string
}

export function FieldLabel({ text, required = false, htmlFor }: FieldLabelProps) {
  const Tag = htmlFor ? 'label' : 'span'
  return (
    <Tag className={styles.label} {...(htmlFor ? { htmlFor } : {})}>
      {required && <span className={styles.required} aria-hidden="true">*</span>}
      {text}
    </Tag>
  )
}
