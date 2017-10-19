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
peco-history() {
    local NUM=$(history | wc -l)
    local FIRST=$((-1*(NUM-1)))

    if [ $FIRST -eq 0 ] ; then
        history -d $((HISTCMD-1))
        echo "No history" >&2
        return
    fi  

    local CMD=$(fc -l $FIRST | sort -k 2 -k 1nr | uniq -f 1 | sort -nr | sed -E 's/^[0-9]+[[:blank:]]+//' | peco | head -n 1)

    if [ -n "$CMD" ] ; then
        history -s $CMD

        if type osascript > /dev/null 2>&1 ; then
            (osascript -e 'tell application "System Events" to keystroke (ASCII character 30)' &)
        fi  
    else
        history -d $((HISTCMD-1))
    fi  
}
bind '\C-r":"peco-history\n"'

export LESS='-i -M -R -W -g'

# setting for synergy v1.7.5
PATH="$PATH:/usr/lib64/qt4/bin:/usr/lib/qt4/bin"
