################ alias ################################
#alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'
### general ###
alias la=" ls -G --color=auto -la "
alias ll=" ls -G --color=auto -l "
alias ls=" ls --color=auto "
alias pd=" cd "
alias vzsh="vim ~/.zshrc "
alias vbash="vim ~/.bashrc "
alias vvim="vim ~./vimrc "

alias ssh-agent-add=' ssh-agent zsh; ssh-add'
#git rm `gits | grep deleted | awk '{print $3}'`

### git ###
alias      gst=" git status "
alias      gad=" git add "
alias     gcom=" git commit "
alias      gbr=" git branch "
alias     gcho=" git checkout "
alias     gpul=" git pull "
alias     gpus=" git push "
alias     glog=" git log "
alias      gdf=" git diff "
alias     gdfl=" git diff | lv "
alias  glogvim=" git log -p | vim - "
alias  gdifvim=" git diff | vim - "
#gits | grep deleted | awk '{print $3}'
alias gits_del=" st | grep deleted | awk '{print $3}' "

### svn ###
alias svn=colorsvn


### screen ###
alias  sc=" screen"
alias scl=" screen -ls"
alias scr=" screen -r"
alias scs=" screen -S"

### vim ###
#alias vi=" vim "

############################# user dictionary ######################
#php.log
alias phplog='tail -f /var/log/php.log'

##hack other user
alias hack=' sudo -u admin ssh'
############################################################################

########## languagutf8
#export LANG=ja_JP.UTF-8
########## grep ##########
find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }
########## auto ls after cd ########
chpwd() { ls }

#autoload predict-on
#predict-on

################################################ PROMPT
#PROMPT=$'%{%B%}%{\e[35m%}%n[%T] # %}%{%b%}'
#RPROMPT=$'%{\e[32m%}%/%}%{\e[39m%}'
#PROMPT=$'%B%F%{\e[32m%}%* ('$(sysctl -n vm.loadavg | perl -anpe '$_=$F[1]')$')%m $ %f%b'
PROMPT=$'%B%F%{\e[0;35m%}%m : %~%f%b'$'\n# '
export LS_COLORS='no=00:fi=00:di=01;37:ln=04:pi=40;33:so=40;33:bd=40;33:cd=40;33:ex=01;31:or=04:ow=01;37:tw=01;37'
# change color by ur status when u state git branch
# load ${fg[...]} and $reset_color
autoload -U colors; colors

function rprompt-git-current-branch {
    local name st color
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
            return
        fi
        name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
        if [[ -z $name ]]; then
            return
        fi
        st=`git status 2> /dev/null`
        if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
            color=${fg[green]}
        elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
            color=${fg[yellow]}
        elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
            color=${fg_bold[red]}
        else
            color=${fg[red]}
        fi
        # %{...%} show strings in {} is escape sequence
        #
        echo "%{$color%}$name%{$reset_color%}"
}
#
setopt prompt_subst
#RPROMPT=$'%B%F%{\e[44;01m[%}%f%b `rprompt-git-current-branch` %~]%B%F%{\e[44;01m\]%}%f%b'
RPROMPT=$'%B%F%{\e[40;01m%}[%f%b`rprompt-git-current-branch`%B%F]%f%b' # `rprompt-git-current-branch` %~]%B%F%{\e[44;01m\]%}%f%b'
#RPROMPT='[`rprompt-git-current-branch`%~]'
source ~/.nvm/nvm.sh

export NODE_PATH=$HOME/.node_libraries:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/proton/src/server/node_modules/.bin:$HOME/bin:/usr/local/bin:$PATH
export MANPATH=$HOME/share/man:$MANPATH
#export PROMPT_COMMAND='echo -ne "\033"'0;${OLDPWD##/*/}//${PWD##/*/}\007"''"
################################################### end

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
 function chpwd() {
     echo -e "\e[44;01m$PWD\e[m"
     ls -G -p -a --color=auto
 }alias

