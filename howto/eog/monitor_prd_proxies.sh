tmux new -s tcp_monitor_prd -d

tmux split-window -v -t tcp_monitor_prd
tmux select-layout -t tcp_monitor_prd even-vertical
tmux split-window -v -t tcp_monitor_prd
tmux select-layout -t tcp_monitor_prd even-vertical
tmux split-window -v -t tcp_monitor_prd
tmux select-layout -t tcp_monitor_prd even-vertical
tmux split-window -v -t tcp_monitor_prd
tmux select-layout -t tcp_monitor_prd even-vertical
tmux split-window -v -t tcp_monitor_prd
tmux select-layout -t tcp_monitor_prd even-vertical

tmux send-keys -t 0 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.1.237 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.1.132 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.3.115 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.11.156 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 4 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.5.22 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 5 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.5.211 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter

tmux a
 
 





