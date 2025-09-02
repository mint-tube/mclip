#!/bin/env sh

# fatal errors
set -e

flutter clean
flutter pub get
flutter build linux

mkdir -p dist/linux/
rm -rf dist/linux/* || true
mv build/linux/x64/release/bundle/* dist/linux/ || true

echo Moved to dist/linux/ 