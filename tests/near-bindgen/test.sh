#!/bin/sh
set -e
set -x
BASEDIR=../../
$BASEDIR/bin/asc main.ts --outFile main.wat --nearFile main_near.ts
prettier --write main_near.ts
$BASEDIR/bin/asc main_near.ts -o main_near.wat
diff main_near.ts.expected main_near.ts
$BASEDIR/bin/asc test.ts -o test.wasm --textFile test.wat
diff test.wat.expected test.wat
