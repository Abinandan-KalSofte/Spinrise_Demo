# Spinrise Backend - Setup & Deployment Guide

## Local Development Setup

### Prerequisites
- .NET 8 SDK
- SQL Server 2019 or later
- Visual Studio 2022 / VS Code
- Node.js (for frontend)

### Steps
1. Clone repository
2. Set backend connection string in `Spinrise.API/appsettings.Development.json`
3. Apply database scripts:
   - `Spinrise.DBScripts/01 Tables/*.sql`
   - `Spinrise.DBScripts/02 Stored Procedures/*.sql`
   - `Spinrise.DBScripts/03 Seed Data/*.sql`
4. Run API:
   - `dotnet run --project Spinrise.API/Spinrise.API.csproj`
5. Run frontend:
   - `npm install` in `frontend/spinrise-web`
   - `npm run dev`
6. Browse `https://localhost:5243/swagger` for API docs

## Production Deployment

### Configuration
- Set `ASPNETCORE_ENVIRONMENT=Production`
- Use secure values in `appsettings.Production.json`
- Provide strong JWT secret in environment variable

### Hardening
- Enable `UseHsts()` in `Program.cs` (done)
- Enable `UseHttpsRedirection()` (done)
- Configure CORS to allowed origins only

### Deployment options
- Docker: build container for `Spinrise.API` and `spinrise-web`
- Kubernetes: manifests with DB connectivity and secrets
- Azure App Service: use deployment pipeline

## Database Schema Deployment
- Use `merge.bat` in `Spinrise.DBScripts` to run all scripts in order

## Smoke Test
- `GET /api/v1/health`
- `GET /api/v1/users`
- `POST /api/v1/users` with JSON body

## Debugging
- Check logs in app output
- Use `X-Correlation-ID` from API responses
- Ensure database is accessible from service
