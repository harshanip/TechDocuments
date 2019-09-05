tmux new -s  tcpmon_stg_catproxy  -d

tmux split-window -v -t  tcpmon_stg_catproxy 
tmux select-layout -t  tcpmon_stg_catproxy  even-vertical
tmux split-window -v -t  tcpmon_stg_catproxy 
tmux select-layout -t  tcpmon_stg_catproxy  even-vertical
tmux split-window -v -t  tcpmon_stg_catproxy 
tmux select-layout -t  tcpmon_stg_catproxy  even-vertical
tmux split-window -v -t  tcpmon_stg_catproxy 
tmux select-layout -t  tcpmon_stg_catproxy  even-vertical
tmux split-window -v -t  tcpmon_stg_catproxy 
tmux select-layout -t  tcpmon_stg_catproxy  even-vertical 

#tmux split-window -v -t  tcpmon_stg_catproxy 
#tmux select-layout -t  tcpmon_stg_catproxy  even-vertical
#tmux split-window -v -t  tcpmon_stg_catproxy 
#tmux select-layout -t  tcpmon_stg_catproxy  even-vertical
#tmux split-window -v -t  tcpmon_stg_catproxy 
#tmux select-layout -t  tcpmon_stg_catproxy  even-vertical 

tmux send-keys -t 0 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.25.200  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.25.216   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.27.251  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.27.241   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 4 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.21.100   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 5 'ssh -i ~/.ssh/seer.pem ubuntu@110.199.21.114  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter 
#tmux send-keys -t 6 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.25.22   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
#tmux send-keys -t 7 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.27.93   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
#tmux send-keys -t 8 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.21.250  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter 
tmux a


 