#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if command -v pyenv >/dev/null 2>&1; then
  pyenv install -s 3.12.8 || true
  pyenv local 3.12.8 || true
fi
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if ! command -v npm >/dev/null 2>&1; then
  echo "npm not found. brew install node"
  exit 1
fi
npm install
npm run vendor-d3
echo OK
