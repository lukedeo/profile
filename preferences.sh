export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
# export LSCOLORS=GxFxCxDxBxegedabagaced # Bold version...
export LSCOLORS=exfxcxdxBxegedabagacad

alias pushit='git push origin HEAD'
alias pullit='git pull origin HEAD'

alias gc='git commit -am'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gb='git branch'
alias ga='git add'
alias gm='git merge --no-ff'
alias texify='pdflatex -interaction=nonstopmode'
alias ip='ipython'

mark(){
    b=`pwd`
    echo "Set jump-point to current directory." 
}

go(){
    jumppoint=`pwd`
    cd $b 
    pwd
    b=$jumppoint
    unset jumppoint
}

alias marked='$(echo $b)'


alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias root='root -l'

alias up='cd .. && ls'


alias sublime="open -a 'Sublime Text 2'"
alias analyze="valgrind --tool=callgrind --dump-instr=yes --simulate-cache=yes --collect-jumps=yes"


alias tree="tree -C"

alias all="ls -alh"
alias reloadbash='source $HOME/.bashrc'
alias editbash='nano $HOME/.bashrc'

commit() {
    str=$1
    git commit -am "$1"
}

gcp() {
    str=$1
    git commit -am "$1"
    git push origin HEAD
}

if [[ $(id -u) -eq 0 ]];
then # you are root, set red colour prompt 
	export PS1='┌\[$(tput rev)\]\[$(tput setaf 1)\]\[$(tput setab 8)\]\u @ \w\[$(tput sgr0)\]\n└─$ '
else # normal
	export PS1='┌\[$(tput rev)\]\[$(tput setaf 0)\]\[$(tput setab 4)\]\u @ \w\[$(tput sgr0)\]\n└─$ '
fi

export PS1='\$'
export PS_BU=$PS1
export PS_ON="\033[1;31m\$(printf_new "_" \$(tput cols))Current Directory: \[\033[37;1m\][\w]:\[\033[0m\] \n\[\033[1;32m\]\342\224\224\342\224\200\342\224\200[\[\033[0m\]\[\033[1;31m\]\@\[\033[0m\]\[\033[1;32m\] \u]\$ \[\033[0m\]"
export PS_BASIC="\[\e[00;32m\]\u@\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\]\[\e[00;37m\]\$ \[\e[0m\]"

prompt-on(){
    export PS1=$PS_ON
}

prompt-default(){
    export PS1=$PS_BU
}
prompt-basic(){
    export PS1=$PS_BASIC
}

prompt-basic

alias theano-gpu='THEANO_FLAGS=mode=FAST_RUN,device=gpu,floatX=float32 python'

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
# source /usr/local/etc/bash_completion.d/R

source ~/liquidprompt/liquidprompt





alias back='cd $OLDPWD'
alias drop='git stash && git stash drop'
alias ipynb='ipython notebook'
alias psb='python setup.py build'
alias psi='python setup.py install'


alias gpuworkstation="ssh -vvv -t lukenode 'ssh -vvv localhost -p 10022'"
