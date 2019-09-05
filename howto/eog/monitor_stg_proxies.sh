tmux new -s tcp_monitor_stg-d

tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor_stgeven-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor_stgeven-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor_stgeven-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor_stgeven-vertical
tmux split-window -v -t tcp_monitor
tmux select-layout -t tcp_monitor_stgeven-vertical

tmux send-keys -t 0 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.25.220 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.25.248 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.27.151 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.27.57 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 4 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.21.68 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 5 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.21.238 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter

tmux a
 
