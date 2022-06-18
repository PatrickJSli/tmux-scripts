session="dev"

tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
  # Set up your session
  tmux new-session -d -s $session -c ~/
fi

# Attach to created session
tmux attach-session -t $session

