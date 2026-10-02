#!/usr/bin/env bash
# SessionStart: garante que a CLI do Headroom (usada pelos hooks do plugin) esteja instalada.
set -u
command -v headroom >/dev/null 2>&1 && exit 0
pip install -q headroom-ai >/dev/null 2>&1 || pip3 install -q headroom-ai >/dev/null 2>&1 || true
exit 0
