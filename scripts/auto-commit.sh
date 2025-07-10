#!/usr/bin/env bash
# Commit automatico con timestamp e push su remoto
set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

git add -A

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Crea il commit solo se ci sono modifiche
if ! git diff --cached --quiet || ! git diff --quiet; then
    git commit -m "Aggiornamento automatico: $TIMESTAMP"
    git push
fi
