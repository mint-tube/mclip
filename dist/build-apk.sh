#!/bin/env sh

# fatal errors
set -e

flutter clean
flutter pub get
flutter build apk

mkdir -p dist/android/
rm -rf dist/android/mclip.apk || true
cp build/app/outputs/apk/release/app-release.apk dist/android/mclip.apk || true

echo Moved to dist/android/