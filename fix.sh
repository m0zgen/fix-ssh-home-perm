#!/bin/bash
# Script for fixing / correcting ~/.ssh permissions
# Created by Yevgeniy Goncharov, https://sys-adm.in



if [[ -d ~/.ssh ]]; then
    echo "Catalog ~/.ssh found. Fixing..."
    chmod 700 ~/.ssh
    chmod -r 600 ~/.ssh/
    chmod -R 644 ~/.ssh/*.pub
else
    echo "Catalog ~/.ssh does not exist.. Exit"
    exit 1
fi

