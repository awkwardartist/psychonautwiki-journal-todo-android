#!/bin/bash

# source and documentation directories
SRC='./app/src/main/java/com/isaakhanimann/journal'
DOC='./app/documentation'
# ollama model to generate with
if [ -z "$USE_MODEL" ]; then USE_MODEL=qwen2.5-coder; fi

REPOMIX_OUT="$DOC/repomix.xml"
OUTPUT="$DOC/$(realpath "$1" --relative-to="$SRC").md"
OLLAMA_ARGS="--nowordwrap --think=false --truncate=false"
REPOMIX_TARGET="$(dirname "$1")"
TARGET="$REPOMIX_TARGET/$(basename "$1")"
PROMPT="you are a expert developer tasked to analyze this Kotlin codebase information extensively. You are to write very detailed documentation in markdown specifically for the included source file named $TARGET. DO NOT output any information but markdown documentation. "
PROMPT+="DO NOT document things from other files unless absolutely necessary and relevant to the documentation. "
PROMPT+="Ensure the document contains an Overview, Classes/Types, Methods/Functions, and whatever else you think is relevant. "
PROMPT+="If you require more context to make the documentation than I have provided you, only write the word context in all lower-case and no punctuation."

at_exit() {
    # keep repomix file if this argument set
    rm -f "$REPOMIX_OUT"
    exit "$1"
}

if ! [ -x /bin/repomix ]
    then echo "this script requires repomix installed to run."
    at_exit 0
fi 

if ! [ -f "$1" ]
    then echo "File '$1' not found."
    at_exit 1
fi
echo "Generating '$1' -> '$OUTPUT'."

# check that target is in $SRC
if ! find "$SRC" -type f | grep -q "$1"
    then echo "Source file '$1' not contained within '$SRC'"
    at_exit 0
fi

# create output directory
if ! [ -d "$(dirname "$OUTPUT")" ]; 
    then mkdir -vp "$(dirname "$OUTPUT")"
fi

# generate repomix file
if ! [ -f "$REPOMIX_OUT" ]
    then repomix "$REPOMIX_TARGET" --quiet --output "$REPOMIX_OUT"; fi

# run ollama model with output.xml
if ! cat "$REPOMIX_OUT" | ollama run "$USE_MODEL" "$PROMPT" $OLLAMA_ARGS >"$OUTPUT"; 
    then echo 'ollama command failed.'
    rm -f "$OUTPUT"
    at_exit 0
fi

at_exit 0