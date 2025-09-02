#!/bin/env pwsh

$ErrorActionPreference = "Stop"

flutter clean
flutter pub get
flutter build windows

New-Item -ItemType Directory -Force -Path "dist/windows" | Out-Null
Remove-Item -Recurse -Force "dist/windows/*" -ErrorAction SilentlyContinue
Move-Item -Force "build/windows/x64/release/bundle/*" "dist/windows/"

# I hate powershell
Write-Output "Moved to /dist/windows"