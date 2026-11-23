# PDF Extract Orchestrator

Repositorio de infraestructura y orquestación del sistema **Polyrepo** basado en **12-Factor App** y **Traefik** como API Gateway.

## Repositorios que integra
- **API Gateway:** Traefik v3.3 (puerto `8000`, dashboard en `8080`)
- **Extracción PDF:** `pdf-extract-service` (5 réplicas *stateless*)
- **Persistencia y Saga:** `pdf-documents-service` + MongoDB + Redis
- **Cliente de escritorio:** `pdf-gui`

## Cómo levantar el sistema
1. Copiar variables de entorno:
   ```bash
   cp .env.example .env
   ```
2. Iniciar los contenedores:
   ```bash
   docker compose up -d
   ```
3. Ejecutar la interfaz gráfica apuntando al gateway Traefik:
   - Windows: `.\scripts\run-gui.ps1`
   - Linux/macOS: `./scripts/run-gui.sh`
