---
name: CORS Configuration — Spinrise API
description: Where CORS origins are configured and what origins are required for LAN deployment
type: project
originSessionId: deb4c723-50d1-48e4-b885-3342c48abbb6
---
CORS allowed origins are in `appsettings.json` under `Cors:AllowedOrigins`. The setting is read in `Program.cs` and applied via the `"Frontend"` named policy.

**Why this matters:** The deployed `appsettings.json` is overwritten on every `dotnet publish` from the development project's `appsettings.json`. Always edit the dev file — the server copy will be replaced on next publish.

**How to apply:** Edit `Development\backend\Spinrise.API\appsettings.json`. The correct origins as of 2026-04-20:

```json
"Cors": {
  "AllowedOrigins": [
    "http://localhost:5173",
    "https://localhost:5173",
    "http://localhost:3000",
    "http://172.16.16.40",
    "http://172.16.16.40:3000",
    "http://172.16.16.40:80"
  ]
}
```

Frontend runs at `http://172.16.16.40:3000` so `http://172.16.16.40:3000` must always be in this list. If the port ever changes, update this list and republish.
