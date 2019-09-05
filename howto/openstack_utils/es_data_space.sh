tmux new -s es_dev -d

tmux split-window -v -t es_dev
tmux select-layout -t es_dev even-vertical
tmux split-window -v -t es_dev
tmux select-layout -t es_dev even-vertical 


tmux send-keys -t 0 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.164.151  '  enter
tmux send-keys -t 1 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.164.154 '  enter
tmux send-keys -t 2 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.164.154' enter

tmux a
