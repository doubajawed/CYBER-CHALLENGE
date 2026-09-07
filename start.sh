#!/usr/bin/env bash
set -euo pipefail
[ -f .env ] || cp .env.example .env
echo "Starting Cyber Challenge on http://localhost:${PORT:-3000}"
npm install
npm start
