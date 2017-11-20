# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias gterm='gnome-terminal'
alias ssh='ssh -X'
alias rdesktop='rdesktop -k ja -a 32'
alias scrdt='rdesktop -g 960x1200 -x lan -d VLSILAB -u s-tomoki scutum'
alias pegrdt='rdesktop -g 980x1100 -x lan pegasus'
alias cp='cp -i'
alias tgif='LANG=C tgif'
alias vimdiff='vim -d'
alias parallel='parallel --citation'

if [ -d $HOME/works/script ]
then
	PATH=$PATH:$HOME/works/script:/usr/X11R6/bin; export PATH
fi

if [ -d /work/s-tomoki ]; then
  export PATH=$PATH:/work/s-tomoki/local/neovim/bin
  export export XDG_CONFIG_HOME=~/.config
  alias vim='nvim'
fi

# set default editor
export EDITOR="/usr/bin/vim"
export TERM=xterm-256color
export VIM=

#CoreDumpSize set
ulimit -c unlimited

#set history command parameter
HISTTIMEFORMAT='%y/%m/%d %H:%M:%S ';

# set perlbrew's path
#source ~/perl5/perlbrew/etc/bashrc

# key config
xmodmap ~/.Xmodmap

#PERL_MB_OPT="--install_base \"/home/s-tomoki/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/s-tomoki/perl5"; export PERL_MM_OPT;

ulimit -c unlimited
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if [ -e /usr/X11R6/bin/tgif ]; then
  export PATH="${PATH}:/usr/X11R6/bin"
fi

export CCACHE_DIR=/work/s-tomoki/.ccache
# TEXLIVE 2016
export INFOPATH=${INFOPATH}:/usr/local/texlive/2016/texmf-dist/doc/info
export MANPATH=${MANPATH}:/usr/local/texlive/2016/texmf-dist/doc/man
export PATH=${PATH}:/usr/local/texlive/2016/bin/x86_64-linux

if [ -d /opt/rh/devtoolset-4/ ]; then
  source /opt/rh/devtoolset-4/enable
fi
if [ -d /opt/intel/mkl/ ]; then
  source /opt/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
fi

export PATH=$PATH:/work/s-tomoki/local/peco_linux_amd64

export HISTCONTROL="ignoredups"

export LESS='-i -M -R -W -g'

# setting for synergy v1.7.5
PATH="$PATH:/usr/lib64/qt4/bin:/usr/lib/qt4/bin"

# settings for peco
_replace_by_history() {
  local l=$(HISTTIMEFORMAT= history | tac | sed -e 's%^\s*[0-9]*\+[0-9\|/\| \|:]\+%%g' | peco --query "$READLINE_LINE")
  READLINE_LINE="$l"
  READLINE_POINT=${#l}
}
bind -x '"\C-r": _replace_by_history'
bind    '"\C-xr": reverse-search-history'

#  FOR GIT SETTINGS
# スクリプト読み込み
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させ�S�い文字列の終了
# \$ $
# export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
##############

# Enhance cd command
# Ref: https://qiita.com/k-takata/items/092f70f66d545cb9db7c
cd_func ()
{
  local x2 the_new_dir adir index
  local -i cnt

  if [[ $1 ==  "--" ]]; then
    dirs -v
    return 0
  fi

  the_new_dir=$1
  [[ -z $1 ]] && the_new_dir=$HOME

  if [[ ${the_new_dir:0:1} == '-' ]]; then
#
# Extract dir N from dirs
    index=${the_new_dir:1}
    [[ -z $index ]] && index=1
    adir=$(dirs +$index)
    [[ -z $adir ]] && return 1
    the_new_dir=$adir
  fi

#
# '~' has to be substituted by ${HOME}
  [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"

#
# Now change to the new dir and add to the top of the stack
  pushd "${the_new_dir}" > /dev/null
  [[ $? -ne 0 ]] && return 1
  the_new_dir=$(pwd)

#
# Trim down everything beyond 11th entry
  popd -n +11 2>/dev/null 1>/dev/null

#
# Remove any other occurence of this dir, skipping the top of the stack
  for ((cnt=1; cnt <= 10; cnt++)); do
    x2=$(dirs +${cnt} 2>/dev/null)
    [[ $? -ne 0 ]] && return 0
    [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
    if [[ "${x2}" == "${the_new_dir}" ]]; then
      popd -n +$cnt 2>/dev/null 1>/dev/null
      cnt=cnt-1
    fi
    done

    return 0
}
alias cd=cd_func
