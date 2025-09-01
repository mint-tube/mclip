#!/bin/env bash

# fatal errors
set -e

flutter clean
flutter pub get
flutter build linux

mkdir -p dist/linux/
rm -rf dist/linux/* || true   # ignore if empty
mv build/linux/x64/release/bundle/* dist/linux/ || true

echo See dist/linux 