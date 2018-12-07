#!/bin/sh
BASEDIR=../../
$BASEDIR/bin/asc main.ts --outFile main.wat --nearFile main.near.ts
cat main.ts main.near.ts > combined.ts
$BASEDIR/bin/asc combined.ts -o combined.wat
prettier --write combined.ts
$BASEDIR/bin/asc test.ts -o test.wasm

