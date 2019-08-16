#!/bin/sh
set -e
set -x
# BASEDIR=../..
(cd ..; npm run build:bindings)
npm install
npm run build
npm run test