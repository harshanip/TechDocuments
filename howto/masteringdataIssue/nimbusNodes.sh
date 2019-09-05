tmux new -s nimbus -d

tmux split-window -v -t nimbus
tmux select-layout -t nimbus even-vertical 


tmux send-keys -t 0 'ssh -i key.pem ubuntu@10.198.0.193'enter
tmux send-keys -t 1 'ssh -i key.pem ubuntu@10.198.7.81' enter 
tmux a
