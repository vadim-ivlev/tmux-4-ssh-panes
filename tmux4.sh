#!/bin/bash

# inspired by https://gist.github.com/dmkash/2355219

SESSION_NAME="tmux4"

tmux has-session -t ${SESSION_NAME}

if [ $? != 0 ]
then

  tmux new-session -A -d -s tmux4

  tmux split-window -h
  tmux split-window
  tmux select-pane -t 0
  tmux split-window

  tmux select-pane -t 0 
  tmux select-pane -P 'bg=#000000'
  tmux send-keys 'ssh works' Enter

  tmux select-pane -t 1 
  tmux select-pane -P 'bg=#004000'
  tmux send-keys 'ssh front' Enter

  tmux select-pane -t 2 
  tmux select-pane -P 'bg=#000040'
  tmux send-keys 'ssh subsmag' Enter

  tmux select-pane -t 3 
  tmux select-pane -P 'bg=#400000'
  tmux send-keys 'ssh pravo' Enter
fi

tmux attach -t ${SESSION_NAME}


#tmux new-session -d 'vim'
#tmux split-window -v 'ipython'
#tmux split-window -h
#tmux new-window 'mutt'
#tmux -2 attach-session -d


