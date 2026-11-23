#!/usr/bin/env bash
set -euo pipefail

GUI_PATH="${1:-../pdf-gui}"

if [ ! -d "$GUI_PATH" ]; then
  echo "Error: No se encontró pdf-gui en '$GUI_PATH'." >&2
  exit 1
fi

export PDF_EXTRACT_GATEWAY_URL="http://localhost:8000"
export API_URL="http://localhost:8000"
export PDF_EXTRACT_READ_TIMEOUT_S="120.0"

echo "Iniciando pdf-gui conectado a Traefik ($PDF_EXTRACT_GATEWAY_URL)..."
uv --directory "$GUI_PATH" run python interface.py
