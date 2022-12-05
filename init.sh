#!/usr/bin/bash

set -e

rm -rf .git
read -p 'Project name: ' projectname
read -p 'port: ' port

rm readme.md
