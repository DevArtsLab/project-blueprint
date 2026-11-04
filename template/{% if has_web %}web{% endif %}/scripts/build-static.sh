#!/usr/bin/env bash
# Static-export build for Workers assets: parks api routes, builds, restores.
set -euo pipefail
cd "$(dirname "$0")/.."
mv src/app/api src/.api.bak
trap 'mv src/.api.bak src/app/api' EXIT
TC_STATIC=1 NEXT_PUBLIC_TC_STATIC=1 pnpm build
