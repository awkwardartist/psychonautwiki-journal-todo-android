#!/bin/sh

ALL_SRCS="$(find './app/src/main/java' -name '*.kt')"

for src in $ALL_SRCS; do
    './app/documentation/gen.sh' "$src"
done

