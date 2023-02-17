#!/bin/bash

motivity = 3
if [ -d "$@" ]; then
    echo "Files found: $(find "$@" -type f | wc -l)"
    echo "Folders found: $(find "$@" -type d | wc -l)"
ese
    echo "[ERROR] Please retry with a folder."
    ext 1
fi