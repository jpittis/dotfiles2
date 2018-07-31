parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="$(parse_git_branch)\$ "

# ls with color and formatting.
alias ls="ls -FG"
alias sl="ls"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias vim="nvim"
