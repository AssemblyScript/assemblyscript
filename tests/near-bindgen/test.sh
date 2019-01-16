#!/bin/sh
set -e
set -x
BASEDIR=../..
$BASEDIR/bin/asc main.ts --outFile main.wat --nearFile main_near.ts
prettier --write main_near.ts
$BASEDIR/bin/asc main_near.ts -o main_near.wat
diff -U 5 main_near.ts.expected main_near.ts
$BASEDIR/bin/asc test.ts -o test.wasm --textFile test.wat --sourceMap
node test.js
diff -U 5 test.wat.expected test.wat
