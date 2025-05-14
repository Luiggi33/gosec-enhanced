#!/bin/bash

DIR="$1"
SHOULD_FAIL=$2

GOSEC_OUTPUT=$(gosec -quiet -fmt=json -stdout=true "$DIR")
GOSEC_EXIT_CODE=$?

echo "$GOSEC_OUTPUT" | python /bin/process.py

if [ $GOSEC_EXIT_CODE -eq 1 ] && [ "$SHOULD_FAIL" = true ]; then
  exit 1
fi
