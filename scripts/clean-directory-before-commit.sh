#!/usr/bin/env bash

set -x

rm -rf target/

rm -rf .git/

rm -rf .sonar/

rm -rf .idea/

rm -rf logs/

find . -name '*.iml' -delete
