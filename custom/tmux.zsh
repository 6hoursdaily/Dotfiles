function ttn {
  tmux new -s $1
}

function ttc {
  tmux attach -t $1
}

function ttl {
  tmux list-sessions
}
