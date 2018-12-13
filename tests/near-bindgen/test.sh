#!/bin/sh
BASEDIR=../../
$BASEDIR/bin/asc main.ts --outFile main.wat --nearFile main.near.ts
cp main.near.ts combined.ts
prettier --write combined.ts
$BASEDIR/bin/asc combined.ts -o combined.wat
$BASEDIR/bin/asc test.ts -o test.wasm

