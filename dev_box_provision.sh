#!/usr/bin/env bash
cd "<REPO_WHERE_THE_DEVBOX_LIVES>" # e.g. /home/krec/Dev-Box/dev-box/ansible

git pull

echo "start vagrant up"
vagrant up --provision

read -p "Press enter to continue"
