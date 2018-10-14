#Homebrew bin
export PATH=$PATH:/usr/local/bin

#Default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

#Prompt
PS1='\w\$ '

alias vi='nvim'

alias gst='git status'
alias gl='git log'


#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#FZF
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "head -100 {} "'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
