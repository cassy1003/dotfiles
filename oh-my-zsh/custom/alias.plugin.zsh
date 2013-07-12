################ alias ################################
#alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'
### general ###
#alias la=" ls -G --color=auto -la "
#alias ll=" ls -G --color=auto -l "
#alias ls=" ls --color=auto "
alias la=" ls -la "
alias ll=" ls -l "
alias pd=" cd "
alias vzsh="vim ~/.zshrc "
alias vbash="vim ~/.bashrc "
alias vvim="vim ~/.vimrc "
alias cdp="cd ~/proton "
alias cdpd="cd ~/public_html/proton-docs "
alias cdg="cd ~/gree"
alias cdggp="cd ~/gree/ggpsns"

alias ssh-agent-add=' ssh-agent zsh; ssh-add'
alias gs2=" ssh gs2.in.gree.jp"
alias gs4=" ssh gs4.in.gree.jp"
alias gs6=" ssh gs6.in.gree.jp"
alias ssh-1001="sudo -u gree ssh deploy1001.in"
alias ssh-stg7="sudo -u gree ssh stg7.gree.jp"
alias ssh-sns-stg7="sudo -u admin ssh sns-stg7.gree.net"
alias ssh-proton="ssh proton@proton.dev.gree.jp"
alias atago="ssh masayuki-tanaka@atago.dev.gree.jp"
alias pichon="ssh pichon.dev.gree.jp"
##hack other user
alias hack=' sudo -u admin ssh'
#git rm `gits | grep deleted | awk '{print $3}'`

### git ###
alias      gst=" git status "
alias      gad=" git add"
alias     gcom=" git commit"
alias      gbr=" git branch"
alias     gcho=" git checkout"
alias     gpul=" git pull"
alias     gpus=" git push"
alias     glog=" git log"
alias  glogvim=" git log -p | vim - "
alias     gdf=" git diff "
alias    gdfl=" git diff | lv"
alias    gdfv=" git diff | vim - "
alias     gsu=" git submodule update "
alias    gsur=" git submodule update --recursive"
#gits | grep deleted | awk '{print $3}'
alias gits_del=" st | grep deleted | awk '{print $3}' "

### svn ###
#alias svn=colorsvn


### screen ###
alias  sc=" screen"
alias scl=" screen -ls"
alias scr=" screen -r"
alias scs=" screen -S"

### vim ###
#alias vi=" vim "

### apache ###
alias apache="sudo /etc/init.d/apache"


#php.log
alias phplog='tail -f /var/log/php.log'
#php unit test
alias phpunit='sudo -u www-data /home/gree/common/php/bin//phpunit'

#mysql
alias mysql-proton='mysql -uproton@localhost -pproton'
alias mysql-gree='mysql -u root -h 116.93.145.228 -P 13806 -p'

#async
alias async="/home/gree/src/cli/gree_async.php  --concurrency=4 --high-priority=1  --queue=10  --daemon"
alias asynckill="/home/gree/src/cli/gree_async.php  --concurrency=4 --high-priority=1  --queue=10  --kill"

########## languagutf8
#export LANG=ja_JP.UTF-8
########## grep ##########
find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }
########## auto ls after cd ########

#autoload predict-on
#predict-on

source ~/.nvm/nvm.sh

export NODE_PATH=/usr/lib/nodejs:$HOME/.node_libraries:$PATH
export JAVA_HOME=$HOME/src/jdk1.7.0_04
export TEST_PATH=$HOME/proton/test
export TEST_PATH2=$HOME/proton2/test
export PATH=$HOME/bin:$PATH
export PATH=$HOME/proton/src/server/node_modules/.bin:$HOME/bin:/usr/local/bin:$JAVA_HOME/bin:$NODE_PATH/bin:$TEST_PATH/cli/bin:$TEST_PATH2/cli/bin:$PATH
export MANPATH=$HOME/share/man:$MANPATH
#export PROMPT_COMMAND='echo -ne "\033"'0;${OLDPWD##/*/}//${PWD##/*/}\007"''"

export HISTSIZE=1000
################################################## #end

################################################### w3m
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
################################################### w3m 終わり

# cd をしたときにlsを実行する
#function chpwd() { ls -G -p -a --color=auto }
function chpwd() { ls }
#chpwd() { ls }

