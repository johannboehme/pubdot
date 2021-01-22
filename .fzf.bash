# Setup fzf
# ---------
if [[ ! "$PATH" == */home/lorddevien/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/lorddevien/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/lorddevien/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/lorddevien/.fzf/shell/key-bindings.bash"
