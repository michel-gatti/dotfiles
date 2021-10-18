# Setup fzf
# ---------
if [[ ! "$PATH" == */home/gatti/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/gatti/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/gatti/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/gatti/.fzf/shell/key-bindings.zsh"
