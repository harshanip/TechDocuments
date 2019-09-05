tmux new -s dev_super_logs -d

tmux split-window -v -t dev_super_logs
tmux select-layout -tdev_super_logs even-vertical
tmux split-window -v -tdev_super_logs
tmux select-layout -tdev_super_logs even-vertical 


tmux send-keys -t 0 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.165.13' enter 
tmux send-keys -t 1 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.165.17 ' enter
tmux send-keys -t 2 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.165.20 ' enter 

tmux a
