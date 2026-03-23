#!/bin/bash

set -euo pipefail

SPECIAL_WORKSPACE="screenshot"
SPECIAL_WORKSPACE_NAME="special:${SPECIAL_WORKSPACE}"

if ! hyprctl -j monitors | jq -e --arg workspace "$SPECIAL_WORKSPACE_NAME" '.[] | select(.focused and .specialWorkspace.name == $workspace)' >/dev/null; then
    hyprctl dispatch togglespecialworkspace "$SPECIAL_WORKSPACE"
fi

if ! hyprshot -s -z -m region --raw | satty -f -; then
    exit 0
fi
