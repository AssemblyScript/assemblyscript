#!/bin/sh
set -e
set -x
(cd ..; npm run build)
npm run test
