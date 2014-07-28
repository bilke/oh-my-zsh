alias makej='make -j 4'
alias size='du -hdl'
alias rsync='rsync -av --progress --stats'
alias top='top -o cpu'
alias ql="qlmanage -p &>/dev/null" # Quicklook
alias psgrep="ps Ao pid,comm|ruby -e 'puts STDIN.read.gsub(/^ *(\d+) .*?([^\/]+?$)/,\"\\\1: \\\2\")'|grep -iE"
alias eepermissions="sudo chmod 666 exp/expressionengine/config/{config.php,database.php} &&
    sudo chmod -R 777 exp/expressionengine/cache &&
    sudo chmod -R 777 exp/expressionengine/templates"

alias vrpn_server='/Users/bilke/code/vrpn/build/server_src/vrpn_server -v -f /Users/bilke/code/vrpn/build/server_src/vrpn.cfg'

alias bower='noglob bower'
alias js='jekyll serve --watch'
alias jg='jekyll build'
alias svndeleterepo='find . -iname ".svn" -print0 | xargs -0 rm -r'

export DOCKER_HOST=tcp://

alias start_apache='boxen --disable-services; boxen --enable-service mysql; sudo apachectl start'

alias unrar='unrar x'

alias gdb='gdb -tui -q --args'

# PDF optimization
#alias pdfoptscreen='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=small.pdf big.pdf'

pdfoptscreen() {
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}

pdfoptprint() {
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$2" "$1"
}
