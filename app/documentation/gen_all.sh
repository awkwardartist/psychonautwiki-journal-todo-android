#!/bin/sh

GEN_SH="$(dirname "$0")/gen.sh"
ALL_SRCS="$(find './app/src/main/java' -name '*.kt')"

for src in $ALL_SRCS; do
    "$GEN_SH" "$src"
done

