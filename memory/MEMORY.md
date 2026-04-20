# Memory Index

- [Developer Persona for Spinrise](user_role.md) — Always act as a 10-year experienced ERP fullstack developer with the Spinrise tech stack
- [Migration Project — Current State](project_migration_context.md) — Tables live, SPs only; modules: Admin/Auth/Purchase/Inventory; IIS deployment URLs and app pool names; report column maps
- [CORS Configuration](project_cors_config.md) — Allowed origins list, edit dev appsettings.json (overwritten on publish), frontend is at 172.16.16.40:3000
- [IIS Deployment Process](feedback_iis_deployment.md) — Stop app pool → publish/copy → start; never publish while pool is running (DLL lock)
- [Session Logging Requirement](feedback_session_logging.md) — After every thread, write a summary log to E:\Abinandan\SPINRISE\.claude\logs\ and update README.md index
