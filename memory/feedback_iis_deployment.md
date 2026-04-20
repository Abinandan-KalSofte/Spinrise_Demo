---
name: IIS Deployment Process for Spinrise
description: Correct sequence for publishing backend and frontend to IIS without DLL lock errors
type: feedback
originSessionId: deb4c723-50d1-48e4-b885-3342c48abbb6
---
Always stop the IIS app pool before publishing — the w3wp process locks DLLs and the publish will fail with MSB3021/MSB3027 errors.

**Why:** IIS holds open handles on `Spinrise.Infrastructure.dll` and `Spinrise.API.dll` while the site is running. `dotnet publish` cannot overwrite locked files.

**How to apply:**

Backend deploy sequence:
1. `Stop-WebAppPool -Name 'SpinriseAPI'`
2. `dotnet publish Spinrise.API/Spinrise.API.csproj -c Release -o "E:\Abinandan\SPINRISE\Server\Spinrise.API" --no-self-contained`
3. `Start-WebAppPool -Name 'SpinriseAPI'`

Frontend deploy sequence:
1. `Stop-WebAppPool -Name 'SpinriseWeb'`
2. `Remove-Item 'E:\Abinandan\SPINRISE\Server\spinrise-web\assets\*' -Recurse -Force` (clear old hashed bundles)
3. `npm run build` in `Development\frontend\spinrise-web\`
4. `Copy-Item -Path 'dist\*' -Destination 'E:\Abinandan\SPINRISE\Server\spinrise-web\' -Recurse -Force`
5. `Start-WebAppPool -Name 'SpinriseWeb'`

Use `Get-WebAppPoolState` to verify pool state. If pool is stuck transitioning, use `iisreset /stop` then `iisreset /start`.
