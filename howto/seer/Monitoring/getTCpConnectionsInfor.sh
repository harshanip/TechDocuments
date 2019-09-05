#!/bin/sh

tmux new -s tcp_monitor -d

tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor even-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor even-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor even-vertical

tmux send-keys -t 0 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.1.237 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.1.132 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.9.78 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.3.115 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
