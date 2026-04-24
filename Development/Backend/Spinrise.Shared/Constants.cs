namespace Spinrise.Shared;

public static class ApiRoutes
{
    public const string ApiVersionPrefix = "api/v1";

    public static class Users
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/users";
        public const string GetAll = BaseRoute;
        public const string GetById = $"{BaseRoute}/{{id:int}}";
        public const string Create = BaseRoute;
        public const string Update = BaseRoute;
        public const string Delete = $"{BaseRoute}/{{id:int}}";
        public const string GetPaginated = $"{BaseRoute}/paginated";
    }

    public static class Departments
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/departments";
        public const string GetActive = $"{BaseRoute}/active";
    }

    public static class Lookups
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/lookups";
    }

    /// <summary>
    /// Report endpoints follow the pattern:
    ///   GET api/v1/{module}/reports/{resource}/{id}/{format}
    /// Each module defines its own nested class here.
    /// </summary>
    public static class PurchaseReports
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/purchase/reports";

        // Route segments — used as [HttpGet] arguments on the controller actions.
        public const string Pdf           = "pr/pdf";              // GET ?startDate=&endDate=
        public const string PdfQuest      = "pr/{id:int}/pdf/quest";
        public const string Excel         = "pr/{id:int}/excel";
        public const string Csv           = "pr/{id:int}/csv";

        // Datewise report  — GET ?startDate=yyyy-MM-dd&endDate=yyyy-MM-dd
        public const string DatewiseExcel = "datewise/excel";
        public const string DatewiseCsv   = "datewise/csv";
    }
}

/// <summary>MIME content-type strings for report file downloads.</summary>
public static class ContentTypes
{
    public const string Pdf   = "application/pdf";
    public const string Excel = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
    public const string Csv   = "text/csv";
}

public static class StoredProcedures
{
    public static class Auth
    {
        public const string ValidateUser  = "ksp_Auth_ValidateUser";
        public const string GetUserById   = "ksp_Auth_GetUserById";   // for refresh flow
    }

    public static class User
    {
        public const string GetAll = "usp_User_GetAll";
        public const string GetById = "usp_User_GetById";
        public const string Insert = "usp_User_Insert";
        public const string Update = "usp_User_Update";
        public const string Delete = "usp_User_Delete";
        public const string GetAllPaginated = "usp_User_GetAllPaginated";
        public const string GetCount = "usp_User_GetCount";
    }

    public static class Department
    {
        public const string GetActiveDepartments = "usp_Lookup_GetActiveDepartments";
        public const string GetByDivision = "usp_GetDepartmentsByDivision";
    }

    public static class PurchaseRequisition
    {
        public const string GetAll                    = "ksp_PR_GetAll";
        public const string GetPaginated              = "ksp_PR_GetPaginated";
        public const string GetById                   = "ksp_PR_GetById";
        public const string Insert                    = "ksp_PR_Insert";
        public const string InsertLine                = "ksp_PR_InsertLine";
        public const string Update                    = "ksp_PR_Update";
        public const string SoftDeleteLines           = "ksp_PR_SoftDeleteLines";
        public const string Delete                    = "ksp_PR_Delete";
        public const string DeleteLine                = "ksp_PR_DeleteLine";
        public const string PreChecks                 = "ksp_PR_PreChecks";
        public const string GenerateNumber            = "ksp_PR_GenerateNumber";
        public const string GetMaxPrDate              = "ksp_PR_GetMaxPrDate";
        public const string PendingIndentCheck        = "ksp_PR_PendingIndentCheck";
        public const string PendingPRCheck            = "ksp_PR_PendingPRCheck";
        public const string GetItemInfo               = "ksp_PR_GetItemInfo";
        public const string InsertAuditLog            = "ksp_PR_InsertAuditLog";
        public const string GetDeleteReasons          = "ksp_PR_GetDeleteReasons";
        // ── Existence checks (consolidated) ────────────────────────────────
        public const string DepartmentExists          = "ksp_PR_DepartmentExists";
        public const string ItemExists                = "ksp_PR_ItemExists";
        public const string CostCentreExists          = "ksp_PR_CostCentreExists";
        public const string BudgetGroupExists         = "ksp_PR_BudgetGroupExists";
        public const string MachineExists             = "ksp_PR_MachineExists";
        public const string DeleteReasonExists        = "ksp_PR_DeleteReasonExists";
        public const string IsLinkedToEnquiry         = "ksp_PR_IsLinkedToEnquiry";
        public const string GetItemMinLevel           = "ksp_PR_GetItemMinLevel";
        public const string CategoryExists            = "ksp_PR_CategoryExists";
        public const string SubCostExists             = "ksp_PR_SubCostExists";
        public const string GetItemHistory            = "ksp_PR_GetItemHistory";
    }

    public static class Lookup
    {
        public const string GetDepartments = "ksp_GetDepartments";
        public const string GetEmployees   = "ksp_GetEmployees";
        public const string GetPOTypes     = "ksp_GetPOType";
        public const string GetItems         = "ksp_GetItems";
        public const string GetItemsEnriched = "ksp_GetItemsEnriched";
        public const string GetMachines    = "ksp_GetMachines";
        public const string GetSubCosts    = "ksp_GetSubCosts";
        public const string GetDivisionDetails = "ksp_GetDivisionDetails";
    }

    public static class Stock
    {
        public const string GetCurrentStock = "ksp_Stock_GetCurrentStock";
    }

    public static class PurchaseReport
    {
        public const string GetDatewiseRequisitionReport = "ksp_PO_RequisitionReport_DateWise";
    }
}

public static class ErrorMessages
{
    public const string InvalidId = "A valid id is required.";
    public const string NotFound = "The requested resource was not found.";
    public const string CreatedSuccessfully = "{0} created successfully.";
    public const string UpdatedSuccessfully = "{0} updated successfully.";
    public const string DeletedSuccessfully = "{0} deleted successfully.";
    public const string ValidationFailed = "Validation failed.";
    public const string UnexpectedError = "An unexpected error occurred.";
}

public static class UserRoles
{
    public const string Admin = "Admin";
    public const string Manager = "Manager";
    public const string User = "User";
}
