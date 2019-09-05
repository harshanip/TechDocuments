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

tmux send-keys -t 0 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.14.235  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 1 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.14.69  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 2 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.14.199   "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 3 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.7.33  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 4 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.7.223  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 5 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.8.68  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 6 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.4.56  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 7 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.4.188  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux send-keys -t 8 'ssh -i ~/.ssh/seer.pem ubuntu@10.198.4.223  "TERM=\"xterm\" watch wc -l /proc/net/tcp"' enter
tmux a

