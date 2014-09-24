setopt PROMPT_SUBST
setopt MONITOR
setopt CHECK_JOBS
setopt NO_HUP
unsetopt HUP
setopt vi
setopt auto_menu

function rightPrompt {
    color_end="%{\e[232;m%}"
    color_arrow="%{\e[1;48;5;232;38;5;24m%}"
    color_arrow_error="%{\e[1;48;5;232;38;5;196m%}"
    color_arrow_to_git="%{\e[1;48;5;237;38;5;24m%}"
    color_arrow_to_git_error="%{\e[1;48;5;237;38;5;196m%}"
    color_start="%{\e[1;48;5;24;38;5;254m%}"
    color_start_error="%{\e[1;48;5;196;38;5;254m%}"
    color_git="%{\e[1;48;5;237;38;5;253m%}"
    color_git_arrow="%{\e[1;48;5;232;38;5;237m%}"
    color_arrow_black="%{\e[1;48;5;24;38;5;232m%}"
    color_arrow_black_error="%{\e[1;48;5;196;38;5;232m%}"

    echo "${color_git_arrow}⮂${color_git} %n %(?,${color_arrow_to_git}⮂${color_start} %m ${color_arrow_black},${color_arrow_to_git_error}⮂${color_start_error} %m ${color_arrow_black_error})⮂${color_end}"
}

function prompt {
    last_status=%?
    color_arrow_black="%{\e[1;48;5;24;38;5;232m%}"
    color_arrow_black_error="%{\e[1;48;5;196;38;5;232m%}"
    color_end="%{\e[232;m%}"
    color_arrow="%{\e[1;48;5;232;38;5;24m%}"
    color_arrow_error="%{\e[1;48;5;232;38;5;196m%}"
    color_arrow_to_git="%{\e[1;48;5;237;38;5;24m%}"
    color_arrow_to_git_error="%{\e[1;48;5;237;38;5;196m%}"
    color_start="%{\e[1;48;5;24;38;5;254m%}"
    color_start_error="%{\e[1;48;5;196;38;5;254m%}"
    color_git="%{\e[1;48;5;237;38;5;253m%}"
    color_git_arrow="%{\e[1;48;5;232;38;5;237m%}"
    git_branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')

    smiley="%(?,${color_start}😊 ,${color_start_error}😫 ) %c "

    if [[ -z $git_branch ]]; then
        git="%(?,${color_arrow},${color_arrow_error})⮀"
    else
        git="%(?,${color_arrow_to_git}⮀ ${color_git}${git_branch} ${color_git_arrow},${color_arrow_to_git_error}⮀ ${color_git}${git_branch} ${color_git_arrow})⮀"
    fi

    echo "${smiley}${git}${color_end} "
}

PROMPT='$(prompt)'
RPROMPT='$(rightPrompt)'

# defined alias
alias sf="./app/console"
alias phpspec="./bin/phpspec"
alias spec="./bin/phpspec run -fpretty"
alias specn="./bin/phpspec run -fnyan.cat"
alias behat="./bin/behat"
alias tmux='tmux -2'
alias g="git"
alias ls="ls --color"
alias ll="ls -la --color"
alias phpi="php -a"
alias sfr="./app/console ro:de | peco"
alias sfc="./app/console cont:de | peco"
alias sfrg="./app/console ro:de | grep"
alias sfcg="./app/console cont:de | grep"
alias sfld="tail -f ./app/logs/dev.log"
alias sflp="tail -f ./app/logs/prod.log"
alias clip="xclip -sel clip"
alias grep="grep --color"
alias selenium="java -jar /opt/selenium-server"
alias :q="exit"
alias :r="source ~/.zshrc"
alias tree="tree -CU"
alias gst="git status"
alias glog="git log --graph --pretty=format:'%Cred%h %Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gaci="git add -A && gi ci -m"
alias gci="git ci -m"
alias gaa="git add -A"
alias ga="git add"
alias gpu="git push"
alias gpl="git pull"
alias gru="grep -nri --color"

bindkey ^R history-incremental-search-backward

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GOPATH="$HOME/.go"
export EDITOR='vim'

# configure tmuxinator
source ~/.bin/tmuxinator.zsh
export TERM=screen-256color-bce
