# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias gterm='gnome-terminal'
alias ssh='ssh -X'
alias rdesktop='rdesktop -g 960x1200 -x lan -d VLSILAB -u s-tomoki -a 32 scutum'
alias cp='cp -i'
# alias tgif='LANG=C tgif'

if [ -d $HOME/works/script ]
then
	PATH=$PATH:$HOME/works/script:/usr/X11R6/bin; export PATH
fi

# set default editor
export EDITOR="/usr/bin/vim"
export TERM=xterm-256color

#CoreDumpSize set
ulimit -c unlimited

#set history command parameter
HISTTIMEFORMAT='%y/%m/%d %H:%M:%S ';

# set perlbrew's path
#source ~/perl5/perlbrew/etc/bashrc

# key config
xmodmap ~/.Xmodmap

PERL_MB_OPT="--install_base \"/home/s-tomoki/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/s-tomoki/perl5"; export PERL_MM_OPT;
# set Macro for ldisk
# if [ -d "/ldisk/s-tomoki" ]; then 
#   echo "set LHOME: /ldisk/s-tomoki"
#   export LHOME="/ldisk/s-tomoki"
# fi
