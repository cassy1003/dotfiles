
if [ "`id -u`" -eq 0 ]; then
	PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
else
	PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
fi

if [ "$PS1" ]; then
	if [ "$BASH" ]; then
		PS1='\[\e[0;35m\]\u:\w\$\[\e[00m\]\n# '
#		PS1='\033k\033\\[\u@\h \W]\$'
	else
		if [ "`id -u`" -eq 0 ]; then
			PS1='# '
		else
			PS1='$ '
		fi
	fi
fi

source ~/.nvm/nvm.sh

export NODE_PATH=$HOME/.node_libraries:$PATH
#export PATH=$HOME/bin:$PATH
export PATH=$HOME/proton/src/server/node_modules/.bin:$HOME/bin:/usr/local/bin:$PATH
export MANPATH=$HOME/share/man:$MANPATH
export PROMPT_COMMAND='echo -ne "\033]0;${OLDPWD##/*/}//${PWD##/*/}\007"'
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}\007"'

################ alias ################################
#alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'
### general ###
#alias ll=" ls -G --color=auto -l "
#alias ll=" ls -G --color=auto -l "
#alias lla=" ls -G --color=auto -la "
#alias ls=" ls -G --color=auto "
#alias ls=" ls -G --color=auto "
#alias pd=" cd "

alias ssh-agent-add=' ssh-agent zsh; ssh-add'
#git rm `gits | grep deleted | awk '{print $3}'`

### git ###
alias      gst=" git status "
alias      gad=" git add"
alias     gcom=" git commit"
alias      gbr=" git branch"
alias     gcho=" git checkout"
alias    gpull=" git pull"
alias    gpush=" git push"
alias      glg=" git log"
alias   glgvim=" git log -p | vim - "
alias     gdif=" git diff "
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
#function cd() {
#	builtin cd $@
#	ls
#}
