#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASC="$ROOT_DIR/bin/asc.js"
TS_FILE="$ROOT_DIR/test.ts"
WASM_FILE="$ROOT_DIR/test.wasm"
WAT_FILE="$ROOT_DIR/test.wat"

echo "Compiling $TS_FILE -> $WASM_FILE and $WAT_FILE"
node --enable-source-maps --no-warnings "$ASC" "$TS_FILE" \
  --enable multi-value \
  --outFile "$WASM_FILE" \
  --textFile "$WAT_FILE"

echo
echo "Running exports with wasmtime"
run() {
  local fn="$1"
  shift
  echo "\$ wasmtime run --invoke $fn $WASM_FILE $*"
  wasmtime run --invoke "$fn" "$WASM_FILE" "$@"
  echo
}

run pairI32 3 7
run foo 10 20
run pairI64 5 9
run mixI32I64 11 22
run forward 1 2
