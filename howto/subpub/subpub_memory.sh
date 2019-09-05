tmux new -s  subpub_memory -d

tmux split-window -v -t subpub_memory
tmux select-layout -t subpub_memory even-vertical
tmux split-window -v -t subpub_memory
tmux select-layout -t subpub_memory even-vertical
tmux split-window -v -t subpub_memory
tmux select-layout -t subpub_memory even-vertical
tmux split-window -v -t subpub_memory
tmux select-layout -t subpub_memory even-vertical
tmux split-window -v -t subpub_memory
tmux select-layout -t subpub_memory even-vertical

tmux send-keys -t 0 'ssh hperera@prosp01sc.ecollegeqa.net ' enter
tmux send-keys -t 1 'ssh hperera@prosp02sc.ecollegeqa.net ' enter
tmux send-keys -t 2  'ssh hperera@prosp03sc.ecollegeqa.net ' enter
tmux send-keys -t 3 'ssh hperera@prosp04sc.ecollegeqa.net ' enter
tmux send-keys -t 4  'ssh hperera@prosp05sc.ecollegeqa.net ' enter
tmux send-keys -t 5  'ssh hperera@prosp06sc.ecollegeqa.net ' enter
tmux a


