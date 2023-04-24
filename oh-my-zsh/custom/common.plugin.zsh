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
alias       g=" git "
alias     gst=" git status "
alias     gad=" git add"
alias    gcom=" git commit"
alias     gbr=" git branch"
alias    gcho=" git checkout"
alias    gpul=" git pull"
alias    gpus=" git push origin HEAD"
alias    grma=" git rm $(git ls-files --deleted)"
alias     glg=" git log --stat"
alias    glgv=" git log -p | vim - "
alias    glgs=" git log --pretty='format:%C(yellow)%h %C(white)%s %C(red)%d %C(green)[%ad] %C(cyan)<%an>' --date=relative --graph"
alias    glgm=" git log --no-merges"
alias     gdf=" git diff "
alias    gdfc=" git diff --cached"
alias    gdfl=" git diff | lv"
alias    gdfv=" git diff | vim - "
alias    gdfw=" git diff --color-words --word-diff-regex='\\w+|[^[:space:]]'"
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
#
setopt auto_cd
setopt nobeep

# 補間
# autoload -U compinit
# compinit

# cd ls
function chpwd() { ls }

# grep
function find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }

# search google
function ggl() {
    local str opt
        if [ $ != 0 ]; then
            for i in $*; do
                str="$str+$i"
            done
            str=`echo $str | sed 's/^\+//'`
            opt="?num=30&hl=ja&lr=lang_ja&q=${str}"
        fi
    open http://www.google.co.jp/search$opt
}
function gglt() {
    local str opt
        if [ $ != 0 ]; then
            opt="?sl=en&tl=ja&op=translate&hl=ja&text=$*"
        fi
    open https://translate.google.com/$opt
}


# search alc
function alc() {
    if [ $ != 0 ]; then
        open "http://eow.alc.co.jp/search?q=$*"
    else
        open "http://eow.alc.co.jp/"
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd status_after_checkout

function status_after_checkout() {
  local prev_cmd="$(fc -ln -1)"
  if [[ $(echo $prev_cmd | cut -d" " -f 1) = gcho ]]; then
    if [[ $(echo $prev_cmd | cut -d" " -f 2) != -b ]]; then
      gst
    fi
  fi
}

## chpwd_tab_color
tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}

tab-reset() {
    echo -ne "\033]6;1;bg;*;default\a"
}

chpwd_tab_color() {
  case $PWD/ in
    */tokyo-gas/*) tab-color 100 0 100;; # purple
    */emap-*/*) tab-color 100 100 255;; # blue
    */.ghq/github.com/*) tab-color 100 100 100;; # base gray
    *) tab-reset;;
  esac
}
add-zsh-hook chpwd chpwd_tab_color

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}
local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'

PROMPT="%{$FG[239]%}────────────────────%{$reset_color%}
%{$FG[040]%}- %{$reset_color%}%{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}${current_dir}%{$FG[033]%}${git_info} %{$FG[239]%}: %n at $(box_name)%{$reset_color%} $(virtualenv_info)
%{$FG[040]%}>>%{$reset_color%}%} "
