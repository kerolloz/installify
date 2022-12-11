#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

dconf dump / > "$SCRIPT_DIR/config/backup.dconf.settings"

