# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

# OMZ plugins
plugins=(git zsh-autosuggestions golang docker macos)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

# Aliases

mkcd() {
    mkdir $1 && cd $1
}

cdb() {
    BACK="../"
    if [[ "$1" == "" ]]
    then
        cd ../
    else
    for ((i = 0; i < $1 - 1; i++)); do
        BACK+="../"
    done;
    cd "$BACK"
    fi
}

## Exa
alias l="exa -l -h"
alias la="exa -lg -h"
alias ls="exa"
alias lsr="exa -R"
alias lt="exa --tree"
alias lta="exa -l --tree -h"
alias lg="exa -l --git -h"

PATH="/home/sheke/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/sheke/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/sheke/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/sheke/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/sheke/perl5"; export PERL_MM_OPT;
