# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias gterm='gnome-terminal'
alias ssh='ssh -X'
alias lynx='ssh -X lynx -t "bash --login'
alias rdesktop='rdesktop -g 960x1200 -x lan -d VLSILAB -u s-tomoki -a 32 scutum'
# alias tgif='LANG=C tgif'

if [ -d $HOME/works/script ]
then
	PATH=$PATH:$HOME/works/script:/usr/X11R6/bin; export PATH
fi

# set default editor
export EDITOR="/usr/bin/vim"

#CoreDumpSize set
ulimit -c unlimited

#set history command parameter
HISTTIMEFORMAT='%y/%m/%d %H:%M:%S ';

# set perlbrew's path
source ~/perl5/perlbrew/etc/bashrc

