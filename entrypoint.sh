#!/bin/zsh
set -e

rm -f /app/tmp/pids/server.pid

exec "$@"
