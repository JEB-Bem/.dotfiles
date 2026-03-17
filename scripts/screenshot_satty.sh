#!/bin/bash

set -euo pipefail

SPECIAL_WORKSPACE="screenshot"
SPECIAL_WORKSPACE_NAME="special:${SPECIAL_WORKSPACE}"
TMP_IMAGE=$(mktemp --suffix=.png)

cleanup() {
    rm -f "$TMP_IMAGE"
}
trap cleanup EXIT

if ! grim -g "$(slurp)" "$TMP_IMAGE"; then
    exit 0
fi

if ! hyprctl -j monitors | jq -e --arg workspace "$SPECIAL_WORKSPACE_NAME" '.[] | select(.focused and .specialWorkspace.name == $workspace)' >/dev/null; then
    hyprctl dispatch togglespecialworkspace "$SPECIAL_WORKSPACE"
fi

satty -f "$TMP_IMAGE"
