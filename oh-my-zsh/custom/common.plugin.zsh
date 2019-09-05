#-------------------------
#--------- alias ---------
#-------------------------
# general
alias la="ls -la "
alias ll="ls -l "
alias cl="clear"
alias vzsh="vim ~/.oh-my-zsh/custom/common.plugin.zsh "
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
alias    grma=" git rm $(git ls-files --deleted)"
alias    glog=" git log"
alias glogvim=" git log -p | vim - "
alias     gdf=" git diff "
alias    gdfc=" git diff --cached"
alias    gdfl=" git diff | lv"
alias    gdfv=" git diff | vim - "
alias    gsub=" git submodule update "
alias   gsubr=" git submodule update --recursive"

# screen
alias  sc=" screen -U"
alias scl=" screen -ls"
alias scr=" screen -U -r"
alias scs=" screen -U -S"

# vim
#alias vi=" vim "

# apache
alias apache="sudo /etc/init.d/apache"
# httpd
alias httpd="sudo /etc/rc.d/init.d/httpd"

# php
alias phplog='tail -f /var/log/php.log'

# ssh
alias vsshconf="vim ~/.ssh/config"

#-------------------------
#--------- export --------
#-------------------------
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=/usr/pgsql-9.4/bin:$PATH
export MANPATH=$HOME/share/man:$MANPATH

export HISTSIZE=1000

#export LANG=ja_JP.UTF-8

#-------------------------
#--------- source --------
#-------------------------
#source ~/.nvm/nvm.sh
eval "$(rbenv init - zsh)"

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

