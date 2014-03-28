alias gup='git smart-pull'
alias gm='git smart-merge'
alias gl='git smart-log'
alias gd='git --no-pager diff -M'
alias gdt='git difftool'
alias gdc='git --no-pager  diff --cached -M'
alias gdch='git diff --check'
alias gmt='git mergetool -y'
alias gr='git remote -v'
alias grh='git reset --hard HEAD'
alias gfe='git fetch'
alias gcl='git clean -fdx'

function git-clean-orig {
    git status -su | grep -e"\.orig$" | cut -f2 -d" " | xargs rm
}

function createrepo { ssh git@bilke.co git init --bare "$*".git }
function moverepo { ssh git@bilke.co mv $1.git $2.git }
function deleterepo { ssh git@bilke.co rm -rf "$*".git }
