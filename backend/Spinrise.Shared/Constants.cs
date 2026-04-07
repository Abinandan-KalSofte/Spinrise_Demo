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

    public static class Items
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/items";
        public const string GetActive = $"{BaseRoute}/active";
    }

    public static class Lookups
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/lookups";
    }

    public static class Inventory
    {
        public static class Stock
        {
            public const string BaseRoute  = $"{ApiVersionPrefix}/inventory/stock";
            public const string GetCurrent = "current";
        }
    }

    public static class PurchaseRequisitions
    {
        public const string BaseRoute = $"{ApiVersionPrefix}/purchase-requisitions";
        public const string GetAll = BaseRoute;
        public const string GetById = $"{BaseRoute}/{{id:int}}";
        public const string Create = BaseRoute;
        public const string Update = BaseRoute;
        public const string Delete = $"{BaseRoute}/{{id:int}}";
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
        public const string Pdf   = "pr/{id:int}/pdf";
        public const string Excel = "pr/{id:int}/excel";
        public const string Csv   = "pr/{id:int}/csv";
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

    public static class Item
    {
        public const string GetByDivision = "usp_GetItemsByDivision";
    }

    public static class PurchaseRequisition
    {
        public const string GetAll          = "usp_PR_GetAll";
        public const string GetById         = "usp_PR_GetById";
        public const string Insert          = "usp_PR_Insert";
        public const string InsertLine      = "usp_PR_InsertLine";
        public const string Update          = "usp_PR_Update";
        public const string SoftDeleteLines = "usp_PR_SoftDeleteLines";
        public const string Delete          = "usp_PR_Delete";
        public const string DeleteLine      = "usp_PR_DeleteLine";
        public const string PreChecks       = "usp_PR_PreChecks";
        public const string GenerateNumber  = "usp_PR_GenerateNumber";
    }

    public static class Lookup
    {
        public const string GetDepartments = "ksp_GetDepartments";
        public const string GetEmployees   = "ksp_GetEmployees";
        public const string GetPOTypes     = "ksp_GetPOType";
        public const string GetItems       = "ksp_GetItems";
        public const string GetMachines    = "ksp_GetMachines";
        public const string GetSubCosts    = "ksp_GetSubCosts";
    }

    public static class Stock
    {
        public const string GetCurrentStock = "usp_Stock_GetCurrentStock";
    }

    /// <summary>
    /// Stored procedures for Purchase report data retrieval.
    /// Replace the demo data in FastReportService with calls to these SPs.
    /// </summary>
    public static class PurchaseReport
    {
        public const string GetRequisitionReportRows = "usp_PR_Report_GetRows";
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
