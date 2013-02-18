alias gup='git smart-pull'
alias gm='git smart-merge'
alias gl='git smart-log'
alias gd='git diff -M'
alias gdt='git difftool'
alias gdc='git diff --cached -M'
alias gmt='git mergetool -y'
alias gr='git remote -v'
alias grh='git reset --hard HEAD'

function git-clean-orig {
    git status -su | grep -e"\.orig$" | cut -f2 -d" " | xargs rm
}