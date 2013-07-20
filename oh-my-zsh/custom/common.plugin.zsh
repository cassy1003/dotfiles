#-------------------------
#--------- alias ---------
#-------------------------
# general
alias la="ls -la "
alias ll="ls -l "
alias cl="clear"
alias vzsh="vim ~/.zshrc "
alias vbash="vim ~/.bashrc "
alias vvim="vim ~/.vimrc "

# git
alias     gst=" git status "
alias     gad=" git add"
alias    gcom=" git commit"
alias     gbr=" git branch"
alias    gcho=" git checkout"
alias    gpul=" git pull"
alias    gpus=" git push"
alias    glog=" git log"
alias glogvim=" git log -p | vim - "
alias     gdf=" git diff "
alias    gdfl=" git diff | lv"
alias    gdfv=" git diff | vim - "
alias     gsu=" git submodule update "
alias    gsur=" git submodule update --recursive"

# screen
alias  sc=" screen"
alias scl=" screen -ls"
alias scr=" screen -r"
alias scs=" screen -S"

# vim
#alias vi=" vim "

# apache
alias apache="sudo /etc/init.d/apache"

# php
alias phplog='tail -f /var/log/php.log'
alias phpunit='sudo -u www-data /home/gree/common/php/bin//phpunit'

#-------------------------
#--------- source --------
#-------------------------
source ~/.nvm/nvm.sh

#-------------------------
#--------- export --------
#-------------------------
export NODE_PATH=/usr/lib/nodejs:$HOME/.node_libraries:$PATH
export PATH=$HOME/bin:$PATH
export MANPATH=$HOME/share/man:$MANPATH

export HISTSIZE=1000

#export LANG=ja_JP.UTF-8

#-------------------------
#--------- command -------
#-------------------------
# cd ls
function chpwd() { ls }

# grep
function find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }

# search google
function google() {
    local str opt
        if [ $ != 0 ]; then
            for i in $*; do
                str="$str+$i"
            done
            str=`echo $str | sed 's/^\+//'`
            opt='search?num=50&hl=ja&lr=lang_ja'
            opt="${opt}&q=${str}"
        fi
    w3m http://www.google.co.jp/$opt
}

# search alc
function alc() {
    if [ $ != 0 ]; then
        w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
    else
        w3m "http://www.alc.co.jp/"
    fi
}

