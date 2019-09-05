tmux new -s es_logs -d

tmux split-window -v -t es_logs
tmux select-layout -t es_logs even-vertical 


tmux send-keys -t 0 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.161.152'  enter
tmux send-keys -t 0 'ssh -i   ~/.ssh/seer.pem ubuntu@10.169.161.153'  enter
tmux a
