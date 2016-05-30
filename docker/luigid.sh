#!/bin/sh

LUIGID_WEBUI_PORT=$(echo $NOMAD_ADDR_ui | cut -f2 -d:)
echo "Starting luigi daemon bound to $LUIGID_WEBUI_PORT"
exec /usr/local/bin/luigid --port $LUIGID_WEBUI_PORT
