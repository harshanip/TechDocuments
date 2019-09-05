tmux new -s  tcpmon_prd_catapp  -d

tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical
tmux split-window -v -t  tcpmon_prd_catapp 
tmux select-layout -t  tcpmon_prd_catapp  even-vertical

tmux send-keys -t 0 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.26.212  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.24.88   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.16.183   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.30.186   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 4 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.30.168   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 5 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.18.72  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 6 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.23.253 "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 7 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.23.145   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 8 'ssh -i ~/.ssh/seer.pem ubuntu@10.199.23.52   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux a

