tmux new -s cataract_logs -d

tmux split-window -v -t cataract_logs
tmux select-layout -t cataract_logs even-vertical  

tmux send-keys -t 0 'ssh -i key.pem ubuntu@10.169.166.87' enter
tmux send-keys -t 0 'ssh -i key.pem ubuntu@10.169.166.88' enter 
tmux a
