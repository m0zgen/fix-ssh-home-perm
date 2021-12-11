#!/bin/bash
# Script for fixing / correcting ~/.ssh permissions
# Created by Yevgeniy Goncharov, https://sys-adm.in

iam=`whoami`

if [[ -d ~/.ssh ]]; then
    echo "Catalog ~/.ssh found. Fixing..."
    sudo chown -R $iam:$iam ~/.ssh/
    sleep 1
    chmod u=rwx,go= ~/.ssh
    chmod -R u=rw,go= ~/.ssh/*
    chmod -R a=r,u+w ~/.ssh/*.pub
else
    echo "Catalog ~/.ssh does not exist.. Exit"
    exit 1
fi

