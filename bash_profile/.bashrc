# call oh-my-posh prompt theme
# note that I created a oh-my-posh based theme and place it in ~ directory
# so be careful if use don't have the theme
eval "$(oh-my-posh --init --shell bash --config ~/zash.omp.json)"

# basic aliases
alias ll="ls -lah"
alias myip="curl ipinfo.io/ip"
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# git aliases
alias gp="git push"
alias gl="git log --oneline --color --all --graph --decorate"
alias gs="git status"
alias gb="git branch --all"
alias go="git remote show origin"
