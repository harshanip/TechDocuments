tmux new -s tcp_monitor -d

tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor even-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor even-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor even-vertical


tmux send-keys -t 0 'ssh -i key.pem ubuntu@10.199.7.19 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i key.pem ubuntu@10.199.9.192 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i key.pem ubuntu@10.199.3.51 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i key.pem ubuntu@10.199.13.17 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
