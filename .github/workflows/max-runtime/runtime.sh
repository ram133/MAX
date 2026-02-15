#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ENGINE_DIR="$ROOT_DIR/max-runtime"

MODE="${MODE:-option-a}"

SESSION_ID="${SESSION_ID:-$(date +"%Y%m%d-%H%M%S")}"
RUN_ID="${RUN_ID:-$(date +"%Y%m%d-%H%M%S")}"

SESSIONS_DIR="$ENGINE_DIR/sessions"
SESSION_DIR="$SESSIONS_DIR/$SESSION_ID"
RUNS_DIR="$SESSION_DIR/runs"
RUN_DIR="$RUNS_DIR/$RUN_ID"
LOGS_DIR="$SESSION_DIR/logs"
DASHBOARD_DIR="$SESSION_DIR/dashboard"

mkdir -p "$RUN_DIR" "$LOGS_DIR" "$DASHBOARD_DIR"

export ENGINE_DIR SESSION_ID RUN_ID SESSION_DIR RUN_DIR LOGS_DIR DASHBOARD_DIR MODE

bash "$ENGINE_DIR/lib/session.sh"
bash "$ENGINE_DIR/lib/run.sh"
bash "$ENGINE_DIR/options/$MODE.sh"
bash "$ENGINE_DIR/lib/dashboard.sh"
