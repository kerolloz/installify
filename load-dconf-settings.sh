#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BACKUP_FILE="$SCRIPT_DIR/config/backup.dconf.settings"

[ ! -f "$BACKUP_FILE" ] && { echo "Cannot find your saved configuration. $BACKUP_FILE does not exist."; exit 1; }

dconf dump / > current.dconf.settings.backup
echo "Created current.dconf.settings.backup file to save a backup of current settings"
dconf load / < "$BACKUP_FILE"

