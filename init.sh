#!/usr/bin/bash

set -e

rm -rf .git
rm -f readme.md
read -p 'Project name: ' projectname
read -p 'port: ' port
find . -type f -exec sed -i "s/%appname%/$projectname/g" {} +
find . -type f -exec sed -i "s/%port%/$port/g" {} +

rm -f init.sh
