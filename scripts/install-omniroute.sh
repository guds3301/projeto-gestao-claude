#!/usr/bin/env bash
# Instala o OmniRoute e mostra os próximos passos. Rode na sua máquina local.
set -euo pipefail

command -v npm >/dev/null 2>&1 || { echo "npm não encontrado. Instale o Node.js primeiro." >&2; exit 1; }

npm install -g omniroute

cat <<'MSG'

OmniRoute instalado. Próximos passos:
  1. omniroute setup      # assistente de primeira execução
  2. omniroute            # sobe o gateway em http://localhost:20128
  3. omniroute run claude --model <provedor/modelo>
     ou: claude mcp add --transport http omniroute http://localhost:20128/api/mcp/stream
MSG
