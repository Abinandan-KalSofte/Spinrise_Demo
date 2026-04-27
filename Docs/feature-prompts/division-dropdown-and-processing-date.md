# Feature Prompts — Division Dropdown & Processing Date

---

## Feature 1 — Division Dropdown on Login Page

### Prompt 1A — Backend: Stored Procedure for Active Divisions

```
Create a new stored procedure `usp_GetActiveDivisions` in
`Spinrise.DBScripts/02 Stored Procedures/Administration/usp_GetActiveDivisions.sql`.

It should SELECT `DivCode`, `DivName` FROM the divisions/company table
WHERE the active flag = 'Y' (or IsActive = 1 — check the actual column name in the schema).
ORDER BY DivName ASC.
Return columns: DivCode (string), DivName (string).

Add this SP to `merged.sql` in the same session.
```

---

### Prompt 1B — Backend: Public API Endpoint

```
Create a public (no [Authorize]) GET endpoint in the Auth controller or a new
`DivisionsController` at route `GET /api/divisions/active`.

- Controller: `Spinrise.API/Areas/Administration/Auth/DivisionsController.cs`
  (or add to the existing AuthController if it exists)
- Service: `IDivisionService.GetActiveDivisionsAsync()` returning
  `IEnumerable<DivisionDto>`
- Repository: calls `usp_GetActiveDivisions` via Dapper, no parameters
- DTO in `Spinrise.Application`:
  ```csharp
  public class DivisionDto
  {
      public string DivCode { get; set; } = string.Empty;
      public string DivName { get; set; } = string.Empty;
  }
  ```
- Response wrapped in `ApiResponse<IEnumerable<DivisionDto>>`
- This endpoint must NOT require JWT authentication because it is called
  before the user logs in.
- Register service and repository in `Program.cs`.
```

---

### Prompt 1C — Frontend: API Helper

```
In `src/features/auth/api/authApi.ts` add a new exported function:

  getActiveDivisions: () =>
    api.get<ApiResponse<DivisionDto[]>>('divisions/active')

Add the type in `src/features/auth/types.ts`:

  export interface DivisionDto {
    divCode: string
    divName: string
  }

This call uses the shared `api` axios client but the endpoint is public,
so no Authorization header check is needed on the server side.
```

---

### Prompt 1D — Frontend: LoginPage Division Select

```
Update `src/features/auth/pages/LoginPage.tsx`:

1. On component mount, fetch active divisions using `authApi.getActiveDivisions()`.
   Store in local state `const [divisions, setDivisions] = useState<DivisionDto[]>([])`.
   Show a loading spinner on the Select while fetching.

2. Replace the Division Code `<Input>` field with an Ant Design `<Select>`:
   - `showSearch` enabled, filter by both divCode and divName
   - `optionFilterProp="label"`
   - Options: divisions.map(d => ({ value: d.divCode, label: `${d.divCode} – ${d.divName}` }))
   - prefix icon: `<BankOutlined />` — use `<Select>`'s `suffixIcon` instead since Select
     doesn't accept prefix. Place a `<BankOutlined />` label adornment to the left using
     a wrapping flex div, or use a Form.Item `prefix` workaround.
   - placeholder: "Select division"
   - size="large"
   - style={{ width: '100%' }}

3. Keep the `name="divCode"` and required validation rule unchanged.
   The submitted value is still `divCode` string — only the UI input type changes.

4. If the fetch fails, fall back to a plain `<Input>` with the existing behaviour
   and show a small warning: "Could not load divisions — enter code manually".
```

---

## Feature 2 — Processing Date

### Prompt 2A — Frontend: Add processingDate to Auth Store

```
Update `src/features/auth/types.ts`:

  Add `processingDate: string` (ISO date string "YYYY-MM-DD") to the `LoginDto`:
  export interface LoginDto {
    divCode:         string
    userName:        string
    password:        string
    processingDate:  string   // user-selected date at login, ISO format
  }

Update `src/features/auth/store/useAuthStore.ts`:

  1. Add `processingDate: string | null` to `AuthState`.
  2. In `setAuthSession`, accept `processingDate` as part of the payload and store it.
  3. In `clearAuthSession`, reset `processingDate` to null.
  4. Add a selector: `getProcessingDate: () => get().processingDate`
  5. Include `processingDate` in the `partialize` list so it persists to localStorage
     under key `spinrise-auth-v2`.

The processing date is NOT sent to the backend — it is a client-side session
concept only. The backend receives it in LoginDto only so that date-range defaults
can be derived on the frontend after login.
```

---

### Prompt 2B — Frontend: Add Processing Date Field to Login Page

```
Update `src/features/auth/pages/LoginPage.tsx`:

1. Add a new `<Form.Item>` for Processing Date between the Division field
   and the Username field:
   - name: "processingDate"
   - label: "Processing Date"
   - rules: [{ required: true, message: 'Please select processing date' }]
   - default value: `dayjs()` (today)
   - Component: Ant Design `<DatePicker>`
     - format="DD-MM-YYYY"
     - style={{ width: '100%' }}
     - size="large"
     - disabledDate: disable future dates (d.isAfter(dayjs(), 'day'))
     - prefix icon: `<CalendarOutlined />`

2. In `onFinish`, before calling `authService.login`, extract the
   `processingDate` dayjs value and convert it:
     const procDate = values.processingDate.format('YYYY-MM-DD')

3. After `setAuthSession(session)`, also call:
     useAuthStore.getState().setProcessingDate(procDate)
   (or include processingDate in the setAuthSession payload — align with Prompt 2A).

4. The `processingDate` field must NOT be sent to `authService.login` —
   strip it before the API call:
     const { processingDate: _pd, ...loginPayload } = values
     const session = await execute(loginPayload)
```

---

### Prompt 2C — Frontend: Display Processing Date in AppHeader

```
Update `src/shared/layouts/AppHeader.tsx`:

1. Read processing date from auth store:
     const processingDate = useAuthStore((s) => s.processingDate)

2. In the `topbar__right` div (after the Bell icon, before the profile),
   add a Processing Date badge:

   <div style={{
     display:      'flex',
     alignItems:   'center',
     gap:          6,
     background:   '#fef3c7',
     border:       '1px solid #f59e0b',
     borderRadius: 8,
     padding:      '3px 10px',
     cursor:       'default',
   }}>
     <CalendarOutlined style={{ color: '#d97706', fontSize: 13 }} />
     <Typography.Text style={{ fontSize: 12, fontWeight: 700, color: '#92400e', fontVariantNumeric: 'tabular-nums' }}>
       {processingDate ? dayjs(processingDate).format('DD-MM-YYYY') : '—'}
     </Typography.Text>
   </div>

3. Add a `<Tooltip title="Processing Date">` wrapper around the badge.

4. Import `CalendarOutlined` from `@ant-design/icons` and `dayjs` from `dayjs`.

5. On mobile (xs screens) hide this badge using a `display: none` media query
   or Ant Design `<Typography.Text className="proc-date-badge">` with a CSS
   class in the topbar stylesheet.
```

---

### Prompt 2D — Frontend: Validate PR Date Against Processing Date

```
Update `src/features/purchase-requisition/components/v2/PRHeaderCards.tsx`
AND `src/features/purchase-requisition/components/v2/PRHeaderV2.tsx`:

1. At the top of each component, read the processing date:
     const processingDate = useAuthStore((s) => s.processingDate)

2. Change the `<Form>` `initialValues` from:
     initialValues={{ prDate: dayjs() }}
   to:
     initialValues={{ prDate: processingDate ? dayjs(processingDate) : dayjs() }}

3. On the `<DatePicker>` for `prDate`, add a `disabledDate` prop:
     disabledDate={(d) => {
       if (!processingDate) return d.isAfter(dayjs(), 'day')
       const proc = dayjs(processingDate)
       return !d.isSame(proc, 'day')
     }}
   This allows ONLY the processing date to be selected. The user cannot pick
   any other date for the PR Date.

4. Add a validator rule to the `prDate` Form.Item:
     rules={[
       { required: true, message: 'Required' },
       {
         validator: (_, value) => {
           if (!value || !processingDate) return Promise.resolve()
           if (!dayjs(value).isSame(dayjs(processingDate), 'day')) {
             return Promise.reject('PR Date must match the processing date set at login.')
           }
           return Promise.resolve()
         },
       },
     ]}

5. Below the DatePicker, show a small info hint:
     <Typography.Text type="secondary" style={{ fontSize: 11 }}>
       Processing date: {processingDate ? dayjs(processingDate).format('DD-MM-YYYY') : '—'}
     </Typography.Text>

Apply the same pattern to any other module date fields in future
(PO date, GRN date, etc.) by reading from `useAuthStore`.
```

---

### Prompt 2E — Backend: Processing Date Awareness (Optional Guard)

```
If the backend needs to be aware of the processing date for audit or
period-lock purposes, add it as a custom HTTP header sent with every
authenticated API request.

In `src/shared/api/client.ts` (the Axios instance setup), add a request
interceptor that reads processingDate from the Zustand store persisted
in localStorage and appends it:

  axiosInstance.interceptors.request.use((config) => {
    const stored = localStorage.getItem('spinrise-auth-v2')
    if (stored) {
      const parsed = JSON.parse(stored)
      const procDate = parsed?.state?.processingDate
      if (procDate) config.headers['X-Processing-Date'] = procDate
    }
    return config
  })

On the backend, in `Spinrise.API/Middleware/` create
`ProcessingDateMiddleware.cs` that reads the `X-Processing-Date` header
and stores it in `HttpContext.Items["ProcessingDate"]` for downstream use.
This is optional in Phase 1 — the frontend validation in Prompt 2D is
sufficient to enforce the constraint.
```

---

## Implementation Order

| Step | Prompt | Dependency |
|------|--------|------------|
| 1    | 1A — SP for divisions         | None |
| 2    | 1B — Backend API endpoint     | After 1A |
| 3    | 1C — Frontend API helper      | After 1B |
| 4    | 2A — Auth store processingDate | None |
| 5    | 1D — Login page Select + Date | After 1C, 2A |
| 6    | 2B — Processing date at login | After 2A |
| 7    | 2C — Header badge             | After 2A |
| 8    | 2D — PR Date validation       | After 2A |
| 9    | 2E — Backend header (optional)| After 2A |
