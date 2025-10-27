#!/usr/bin/env bash
set -e

# Default to gateway if not explicitly set
if [[ "$NVMEOF_TARGET" == "cli" ]]; then
  exec python3 -m control.cli "$@"
else
  exec python3 -m control -c /src/ceph-nvmeof.conf "$@"
fi
