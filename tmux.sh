#!/bin/bash

session='%appname%'

tmux new -d -s $session 'npm run watch'

tmux split-window -h 'npm run browser-sync'
#tmux split-window -h 'npm run browser-sync:static'

tmux split-window -f
#tmux split-window -f 'pm2 start pm2.config.cjs'

tmux attach-session -t $session:0
