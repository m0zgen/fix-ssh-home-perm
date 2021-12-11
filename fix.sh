#!/bin/bash
# Script for fixing / correcting ~/.ssh permissions
# Created by Yevgeniy Goncharov, https://sys-adm.in

# TODO - add param username
# TODO - add target catalog param

iam=`whoami`

if [[ -d ~/.ssh ]]; then
    echo "Catalog ~/.ssh found. Fixing..."
    chown -R $iam:$iam ~/.ssh/
    sleep 3
    chmod u=rwx,go= ~/.ssh
    chmod -R u=rw,go= ~/.ssh/*
    chmod -R a=r,u+w ~/.ssh/*.pub

    echo -e "\nResult:\n"

    ls -la ~/.ssh

    echo -e "\nDone\n"
else
    echo "Catalog ~/.ssh does not exist.. Exit"
    exit 1
fi

