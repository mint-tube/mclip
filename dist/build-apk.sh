#!/bin/env bash

# fatal errors
set -e

flutter clean
flutter pub get
flutter build apk

mkdir -p dist/android/
rm -rf dist/android/mclip.apk
cp build/app/outputs/apk/release/app-release.apk dist/android/mclip.apk

echo See dist/android/