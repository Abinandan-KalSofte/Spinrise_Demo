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

    public static class PurchaseRequisition
    {
        public const string GetAll = "usp_PR_GetAll";
        public const string GetById = "usp_PR_GetById";
        public const string Insert = "usp_PR_Insert";
        public const string Update = "usp_PR_Update";
        public const string Delete = "usp_PR_Delete";
        public const string DeleteLine = "usp_PR_DeleteLine";
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
