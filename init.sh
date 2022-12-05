#!/usr/bin/bash

set -e

read -p "If you need backend support make sure to modify tmux.sh before proceeding! (^C to cancel)"

rm -rf .git
rm -f readme.md

read -p 'Project name: ' projectname
read -p 'Port: ' port
find . -type f -exec sed -i "s/%appname%/$projectname/g" {} +
find . -type f -exec sed -i "s/%port%/$port/g" {} +

code .
npm i

rm -f init.sh
./tmux.sh
