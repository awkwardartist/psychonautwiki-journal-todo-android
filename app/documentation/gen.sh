#!/bin/sh

# source and documentation directories
SRC='./app/src/main/java/com/isaakhanimann/journal'
DOC='./app/documentation'
# ollama model to generate with
if [ -z "$USE_MODEL" ]; then USE_MODEL=smollm2; fi

REPOMIX_OUT="$DOC/repomix.xml"
INCLUDE="$SRC/**/*.kt"
PROMPT="please analyze this codebase extensively and output very detailed documentation in markdown for source file $1. DO NOT output any information but the raw text data for the markdown documentation."
OUTPUT="$DOC/$(realpath --relative-to="$SRC" "$1")"

if ! [ -f "$1" ]
    then echo "File '$1' not found."
    exit 1
fi
echo "Generating '$1' -> '$OUTPUT.md'."

# create output directory
if ! [ -d "$(dirname "$OUTPUT")" ]; 
    then mkdir -vp "$(dirname "$OUTPUT")"
fi

# generate repomix file
repomix --quiet --compress --include "./**/*.kt" --output "$REPOMIX_OUT"

# run ollama model with output.xml
cat "$REPOMIX_OUT" | ollama run "$USE_MODEL" --nowordwrap --hidethinking "$PROMPT" >"$DOC/$(realpath --relative-to="$SRC" "$1").md"
rm -f "$REPOMIX_OUT"