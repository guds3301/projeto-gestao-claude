#!/usr/bin/env bash
# SessionStart: garante que as CLIs usadas pelos plugins/skills estejam instaladas.
#  - headroom (hooks do plugin headroom)
#  - agent-reach (skill agent-reach; instalada do GitHub, pois o pacote homônimo do PyPI é outro projeto)
set -u
command -v headroom >/dev/null 2>&1 || { pip install -q headroom-ai >/dev/null 2>&1 || pip3 install -q headroom-ai >/dev/null 2>&1 || true; }
command -v agent-reach >/dev/null 2>&1 || { pip install -q "git+https://github.com/Panniantong/Agent-Reach.git" >/dev/null 2>&1 || pip3 install -q "git+https://github.com/Panniantong/Agent-Reach.git" >/dev/null 2>&1 || true; }
exit 0
