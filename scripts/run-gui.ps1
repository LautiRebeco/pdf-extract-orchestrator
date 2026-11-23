param(
    [string]$GuiPath = "..\pdf-gui"
)

if (-not (Test-Path $GuiPath)) {
    Write-Error "No se encontró el repositorio pdf-gui en '$GuiPath'. Clonalo como carpeta hermana o pasá -GuiPath."
    exit 1
}

$env:PDF_EXTRACT_GATEWAY_URL = "http://localhost:8000"
$env:API_URL = "http://localhost:8000"
$env:PDF_EXTRACT_READ_TIMEOUT_S = "120.0"

Write-Host "Iniciando pdf-gui conectado a Traefik ($env:PDF_EXTRACT_GATEWAY_URL)..."
uv --directory $GuiPath run python interface.py
