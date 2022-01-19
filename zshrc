# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/nafizh/.oh-my-zsh

export TERM=xterm-256color
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="pygmalion"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(npm sudo git web-search zsh-autosuggestions)

# User configuration

export PATH="/home/nafizh/anaconda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/emboss/bin:/home/nafizh/blast_latest/ncbi-blast-2.5.0+/bin:/home/nafizh/anaconda:/home/nafizh/MetaGeneMark/MetaGeneMark_linux_64/mgm:/home/nafizh/Prokka/prokka/bin:/home/nafizh/.local/lib/python2.7/site-packages:/home/nafizh/.local/bin:/home/nafizh/cdhit-master:/home/nafizh/genemark_suite_linux_64/gmsuite:/home/nafizh/glimmer3.02/"
# export MANPATH="/usr/local/man:$MANPATH"

#source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#ZSH_THEME = "pygmalion"

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ..d="cd /media/myhdd/Downloads"
# Powerline
if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

#export POWERLINE_COMMAND=powerline
#export POWERLINE_CONFIG_COMMAND=powerline-config
#powerline-daemon -q
#POWERLINE_ZSH_CONTINUATION=1
#POWERLINE_ZSH_SELECT=1
#. ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Use sublimetext for editing config files
#alias zshconfig="subl ~/.zshrc"
plugins=(git colored-man colorize github jira vagrant virtualenv pip python zsh-syntax-highlighting)

#eval `dircolors /home/nafizh/.dir_color`

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-10.1/lib64:/usr/local/cuda-10.1/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda-10.1
#export BLASTDB=/home/nafizh/Downloads/blast_search_data_bases
export PATH=/home/nafizh/anaconda2/bin:$PATH
export PATH=/home/nafizh/anaconda3/bin:$PATH
export PATH=/usr/local/cuda-10.1/bin:$PATH
export PATH=/media/myhdd/Downloads/sratoolkit.2.9.2-ubuntu64/bin:$PATH

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/bin:/media/myhdd/Downloads/vuze:/media/myhdd/Downloads/cudd-3.0.0:/home/nafizh/exa-linux-x86_64-v0.10.0/bin:/home/nafizh/.idris2/bin:$PATH"

# OPAM configuration
. /home/nafizh/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nafizh/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nafizh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nafizh/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nafizh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="/usr/bin/ruby:/home/nafizh/.yarn/bin:/home/nafizh/.local/share/coursier/bin:/home/nafizh/.cargo/bin:/home/nafizh/lua-5.3.5/src:/home/nafizh/.idris2/bin/:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##if [[ -r /home/nafizh/mcfly.zsh ]]; then
#  source /home/nafizh/mcfly.zsh
#  setopt autocd
#fi
##
[ -f "/home/nafizh/.ghcup/env" ] && source "/home/nafizh/.ghcup/env" # ghcup-env
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
