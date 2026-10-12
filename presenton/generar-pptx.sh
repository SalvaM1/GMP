#!/usr/bin/env bash
# Genera el PPTX/PDF de E-MOVE con Presenton (https://github.com/presenton/presenton).
#
# Requisitos:
#   - Docker andando.
#   - Una clave de un proveedor de IA (o un modelo local con Ollama / LM Studio).
#     Presenton SIEMPRE necesita un modelo: elige el diseño de cada diapositiva
#     y arma el contenido a partir del markdown de este directorio.
#
# Uso:
#   export ANTHROPIC_API_KEY="sk-ant-..."     # o OPENAI_API_KEY / GOOGLE_API_KEY
#   ./generar-pptx.sh
#
# El archivo exportado queda en ./app_data/exports/ (el volumen montado).

set -euo pipefail

PORT="${PORT:-5001}"
BASE="http://localhost:${PORT}"
PAYLOAD="$(cd "$(dirname "$0")" && pwd)/emove-payload.json"
CONTAINER="${CONTAINER:-presenton}"

# --- 1. Levantar Presenton -------------------------------------------------
if ! docker ps --format '{{.Names}}' | grep -qx "$CONTAINER"; then
  echo "==> Levantando Presenton en ${BASE}"
  docker run -d --name "$CONTAINER" -p "${PORT}:80" \
    -v "$(pwd)/app_data:/app_data" \
    -e LLM="${LLM:-anthropic}" \
    -e ANTHROPIC_API_KEY="${ANTHROPIC_API_KEY:-}" \
    -e ANTHROPIC_MODEL="${ANTHROPIC_MODEL:-claude-sonnet-4-5}" \
    -e OPENAI_API_KEY="${OPENAI_API_KEY:-}" \
    -e GOOGLE_API_KEY="${GOOGLE_API_KEY:-}" \
    -e PRESENTATION_GENERATION_MODE=standard \
    -e DISABLE_IMAGE_GENERATION="${DISABLE_IMAGE_GENERATION:-true}" \
    -e CAN_CHANGE_KEYS=true \
    ghcr.io/presenton/presenton:latest
fi

# --- 2. Esperar a que responda --------------------------------------------
echo "==> Esperando a que Presenton levante (puede tardar ~1 min la primera vez)"
for i in $(seq 1 60); do
  if curl -fsS "${BASE}/api/v1/ppt/presentation/all" >/dev/null 2>&1; then
    echo "    listo"
    break
  fi
  sleep 5
  [ "$i" = 60 ] && { echo "No respondió. Revisá: docker logs $CONTAINER"; exit 1; }
done

# --- 3. Generar ------------------------------------------------------------
echo "==> Generando la presentación (11 diapositivas, plantilla dynamic)"
curl -fsS -X POST "${BASE}/api/v1/ppt/presentation/generate" \
  -H 'Content-Type: application/json' \
  --data-binary "@${PAYLOAD}" \
  -o respuesta.json

cat respuesta.json
echo
echo "==> Listo."
echo "    Archivo exportado: ./app_data/exports/ (ver el campo \"path\" de respuesta.json)"
echo "    Para editarlo a mano: ${BASE}\$(python3 -c 'import json;print(json.load(open(\"respuesta.json\"))[\"edit_path\"])')"
