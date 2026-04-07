# SQL to Stored Procedure Migration Guide

## Files analyzed

- `backend/Spinrise.DBScripts/reference/Po_gmdl.bas`
- `backend/Spinrise.DBScripts/reference/tmpPoindent.frm`

## Findings

- `Po_gmdl.bas` contains the SQL logic used by the old VB6 purchase order/requisition module.
- `tmpPoindent.frm` is a VB6 form definition file; it contains UI metadata and no executable SQL statements.
- The VB6 module builds SQL by string concatenation and assigns SQL to `RecordSource`/`rs.Open` directly.
- Many queries are dynamic and use concatenated table names, column expressions, and date literals.
- This is a strong migration candidate for stored procedures with parameters.

## Extracted SQL templates and operations

### 1. Master data lookup

- `SELECT GRPCODE,GRPNAME FROM in_grp where grpcode between @FromGrpCode and @ToGrpCode`
  - Operation: retrieve item groups for reports and list filtering.

- `SELECT itemCODE,itemNAME,uom,case when IsItemActive='Y' then 'Yes' else 'No' end Active FROM in_item where itemcode like @GrpPrefix and itemcode between @FromItemCode and @ToItemCode`
  - Operation: retrieve item list for a group and code range.

- `SELECT itemCODE,itemNAME,uom,ISNULL(PHYSTK,0) AS PHYSTK, isnull(location,'-'), isnull(itemspec1,'-'), isnull(itemspec2,'-'), isnull(itemspec3,'-'), ISNULL(minlevel,0) AS minlevel, ISNULL(maxlevel,0) AS maxlevel, ISNULL(rordlevel,0) AS rordlevel, ISNULL(rordqty,0) AS rordqty, ISNULL(rate,0) AS rate, (case when CATFLG = 0 then 'Indgenous' else case when CATFLG = 1 then 'Imported' else '-' end end) CATFLG, (case when CATCODE = 'C' then 'Capital' else case when CATCODE = 'S' then 'Stores' else case when CATCODE = 'H' then 'Overhaul' else '-' end end end) CATCODE, isnull(catlno,'-') as catlno, abcflg, fsnflg FROM in_item where itemcode like @GrpPrefix and itemcode between @FromItemCode and @ToItemCode`
  - Operation: detailed item listing with stock, category, and reorder information.

- `SELECT * FROM IN_GODOWN`
  - Operation: fetch warehouse/godown master list.

- `SELECT ISNULL(VATFLG,'') AS VAT FROM IN_PARA`
  - Operation: configuration lookup for VAT settings.

- `SELECT a.state_code as Stat FROM pp_divmas a, fa_slmas b where a.state_code=b.state_code and a.state_code is not null and b.state_code is not null and slcode=@SupplierCode`
  - Operation: determine supplier state code for tax logic.

- `SELECT ISNULL(DESC1,'') AS DESC1, ISNULL(DESC2,'') AS DESC2, ISNULL(DESC3,'') AS DESC3, ISNULL(DESC4,'') AS DESC4, ISNULL(DESC5,'') AS DESC5, ISNULL(DESC6,'') AS DESC6 FROM SFOOT`
  - Operation: report footer content.

### 2. Permission and validation queries

- `SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = @DivCode AND MODULE = @ModuleNo AND ULEVEL = @ULevel AND SNO = @SNO`
  - Operation: load form-level permission flags for the current user.

- `SELECT COUNT(*) FROM @TableName WHERE @TypeColumn = @Type AND PORDDT BETWEEN @FromDate AND @ToDate AND DIVCODE = @DivCode AND PORDNO = @PORDNO`
  - Operation: validate whether a purchase order number already exists.

- `SELECT isnull(MAX(PORDNO),0) FROM @TableName WHERE PORDDT BETWEEN @FromDate AND @ToDate AND DIVCODE = @DivCode AND @TypeColumn = @Type`
  - Operation: compute next PO number in a financial year range.

### 3. Report list / combobox binding queries

- `select distinct (a.itemname + ' -- '+ a.itemcode) FLD, a.itemcode from in_item a, po_ordl b where a.itemcode=b.itemcode and b.divcode=@DivCode order by 2`
  - Operation: populate item selection lists from purchase order detail.

- `select distinct @CodeCol + ' -- ' + @NameCol FLD from @RecSource order by 1`
  - Operation: generic report combo list generation.

- `select distinct(@FieldName) FLD from @Table where divcode = @DivCode and isnull(qtyreqd,0)-isnull(qtyord,0)>0 order by @FieldName`
  - Operation: dynamic report filter list for pending indent/order reports.

- `select DISTINCT(pordno) FLD from @Table WHERE @DateColumn between @FromDate and @ToDate and divcode = @DivCode and canflg is null order by PORDNO`
  - Operation: populate purchase order filter dropdowns.

### 4. Stock and calculation queries

- Complex aggregated query on `IN_TRNTAIL`, `IN_TC`, `IN_GRP`, and `IN_ITEM` to compute stock details such as opening quantity, receipts, issues, balance, value, and quality control quantity.
  - Operation: inventory stock calculation for the selected item or godown.
  - This is a strong candidate for a stored procedure because it contains nested `UNION ALL` aggregates and conditional logic.

- `SELECT o.opstk + r.rec - i.iss, oval + rval - ival FROM ...` join of aggregated opening, receipt, and issue values.
  - Operation: stock ledger computation by item.

### 5. Dynamic SQL patterns

- `SELECT cast(@Col1 as varchar) + '_' + @Col2 FLD FROM @TableName order by @CodeColumn`
  - Operation: dynamic combo list generation with runtime table/column names.

- `select @CodeCol + ' - ' + @CodeName FLD from @RecSource order by cast(@CodeCol as numeric)`
  - Operation: dynamic code/name list ordering by numeric cast.

- `select distinct(@Field) FLD from @Table WHERE divcode = @DivCode order by @Field`
  - Operation: generic filter list generation with dynamic column and table names.

## Why the file was empty

- The file was empty because the migration analysis had not yet been written into it.
- This file now contains the requested extracted SQL patterns and migration guidance.

## Migration guidelines for ASP.NET Core and SQL stored procedures

### 1. Move SQL from VB into stored procedures

Create stored procedures for each logical operation instead of embedding SQL in client code. Examples:

- `usp_GetItemGroupsByRange @FromGrpCode VARCHAR(50), @ToGrpCode VARCHAR(50)`
- `usp_GetItemsByGroupAndRange @GrpPrefix VARCHAR(50), @FromItemCode VARCHAR(50), @ToItemCode VARCHAR(50)`
- `usp_GetItemDetailsByGroupRange @GrpPrefix VARCHAR(50), @FromItemCode VARCHAR(50), @ToItemCode VARCHAR(50)`
- `usp_GetUserLevelPermission @DivCode VARCHAR(10), @ModuleNo INT, @ULevel INT, @SNO INT`
- `usp_GetSupplierItemsByRange @SlCodeFrom VARCHAR(50), @SlCodeTo VARCHAR(50)`
- `usp_GetCurrentStockByItem @DivCode VARCHAR(10), @ItemCode VARCHAR(50), @FromDate DATE, @ToDate DATE, @GodownCode VARCHAR(20)`
- `usp_GetDistinctFilterValues @TableName SYSNAME, @FieldName SYSNAME, @DivCode VARCHAR(10)`

### 2. Use parameters, not string concatenation

Do not build SQL by concatenating user values. Use parameterized calls.

Example in C#:

```csharp
using var conn = new SqlConnection(_connectionString);
using var cmd = new SqlCommand("usp_GetItemsByGroupAndRange", conn)
{
    CommandType = CommandType.StoredProcedure
};
cmd.Parameters.Add("@GrpPrefix", SqlDbType.VarChar, 50).Value = grpPrefix;
cmd.Parameters.Add("@FromItemCode", SqlDbType.VarChar, 50).Value = fromItemCode;
cmd.Parameters.Add("@ToItemCode", SqlDbType.VarChar, 50).Value = toItemCode;
```

### 3. Prefer ADO.NET or Dapper in ASP.NET Core

Example with ADO.NET:

```csharp
public async Task<List<ItemDto>> GetItemsAsync(string grpPrefix, string fromItemCode, string toItemCode)
{
    await using var conn = new SqlConnection(_connectionString);
    await conn.OpenAsync();

    await using var cmd = new SqlCommand("usp_GetItemsByGroupAndRange", conn)
    {
        CommandType = CommandType.StoredProcedure
    };
    cmd.Parameters.Add("@GrpPrefix", SqlDbType.VarChar, 50).Value = grpPrefix;
    cmd.Parameters.Add("@FromItemCode", SqlDbType.VarChar, 50).Value = fromItemCode;
    cmd.Parameters.Add("@ToItemCode", SqlDbType.VarChar, 50).Value = toItemCode;

    await using var reader = await cmd.ExecuteReaderAsync();
    var list = new List<ItemDto>();
    while (await reader.ReadAsync())
    {
        list.Add(new ItemDto
        {
            ItemCode = reader.GetString(0),
            ItemName = reader.GetString(1),
            Uom = reader.GetString(2),
            Active = reader.GetString(3)
        });
    }
    return list;
}
```

Example with Dapper:

```csharp
var items = await connection.QueryAsync<ItemDto>(
    "usp_GetItemsByGroupAndRange",
    new { GrpPrefix = grpPrefix, FromItemCode = fromItemCode, ToItemCode = toItemCode },
    commandType: CommandType.StoredProcedure);
```

### 4. Handle dynamic table/column names safely

In SQL Server, validate object names and use `QUOTENAME` for dynamic identifiers.

Example stored procedure:

```sql
CREATE PROCEDURE usp_GetDistinctList
    @TableName SYSNAME,
    @CodeCol SYSNAME,
    @NameCol SYSNAME,
    @DivCode VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = N'SELECT DISTINCT ' + QUOTENAME(@CodeCol) + N' + '' - '' + ' + QUOTENAME(@NameCol) + N' AS FLD '
        + N'FROM ' + QUOTENAME(@TableName) + N' WHERE divcode = @DivCode ORDER BY 1';

    EXEC sp_executesql @sql, N'@DivCode VARCHAR(10)', @DivCode;
END
```

### 5. Standardize date handling

The legacy code uses mixed date formats. In stored procedures, accept dates as `DATE` or `DATETIME` instead of embedding formatted text.

### 6. Convert report filters and combobox binding

Return strongly typed result sets from stored procedures and bind the results in ASP.NET Core.

### 7. Keep business logic in SQL where it belongs

The VB module contains business rules for:
- stock calculations,
- purchase order number generation,
- permission checks,
- dynamic filter list generation.

Keep these in stored procedures or database functions, and keep the ASP.NET Core layer focused on orchestration.

### 8. Migration checklist

1. Identify each VB SQL block and assign a stored procedure.
2. Replace raw VB SQL with stored-procedure calls.
3. Use parameterized queries in ASP.NET Core.
4. Validate dynamic table/column names before use.
5. Normalize dates to `DateTime`.
6. Preserve business intent for reporting and inventory logic.
7. Test stored procedures independently.

## Recommended next steps

- Build the first stored procedures for lookup and report list queries.
- Migrate one UI binding from VB to ASP.NET Core using a stored procedure result set.
- Refactor stock calculation logic into a database procedure.
- Keep `tmpPoindent.frm` only for UI layout reference; it does not require SQL migration.

## Summary

This guide captures the SQL templates from `Po_gmdl.bas` and turns them into a migration approach for ASP.NET Core and SQL stored procedures. The migration path is:

- remove raw SQL concatenation,
- centralize data access in stored procedures,
- use parameterization everywhere,
- and preserve business logic in the database for complex stock and report queries.
