#!/bin/sh
set -e
set -x
# BASEDIR=../..
(cd ..; npm run build:bindings && npm run build:bundle)
npm install
npm run build
npm run test
