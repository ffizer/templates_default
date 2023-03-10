#!/usr/bin/env bash

set -euo pipefail
# set -x
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

CMD=$(command -v "$SCRIPT_DIR"/ffizer || command -v ffizer)

#shopt -s globstar nullglob
for samples_dir in "$SCRIPT_DIR"/*/.ffizer.samples.d; do
  TEMPLATE=$(dirname "$samples_dir")
  if [ "$TEMPLATE" == "." ]; then
    echo "\"$CMD\" test-samples --source \"$TEMPLATE\""
    "$CMD" test-samples --source "$TEMPLATE"
  else
    echo "$CMD" test-samples --source "$(dirname "$TEMPLATE")" --source-subfolder "$(basename "$TEMPLATE")"
    "$CMD" test-samples --source "$(dirname "$TEMPLATE")" --source-subfolder "$(basename "$TEMPLATE")"
  fi
done
