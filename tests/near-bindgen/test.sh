#!/bin/sh
set -e
set -x
BASEDIR=../..
mkdir -p bignum json
cp -R ../../node_modules/bignum/assembly/* bignum/
cp -R ../../node_modules/assemblyscript-json/assembly/* json/
$BASEDIR/bin/asc model.ts --nearFile model_near.ts
$BASEDIR/bin/asc main.ts --nearFile main_near.ts
$BASEDIR/bin/asc main_near.ts --runtime stub --debug -o main_near.wat
$BASEDIR/bin/asc test.ts --runtime stub --debug -o test.wasm --textFile test.wat
prettier --parser typescript --write main_near.ts
prettier --parser typescript --write model_near.ts
node test.js
diff -U 5 main_near.ts.expected main_near.ts
diff -U 5 model_near.ts.expected model_near.ts
diff -U 5 test.wat.expected test.wat
