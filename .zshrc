# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/davi/.oh-my-zsh
  export TERM='xterm-256color'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git completion ruby rails gem bundler command-not-found composer common-aliases compleat dircycle dirhistory encode64 historyvagrant colorize docker docker-compose)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr
  /games:/usr/local/games:/snap/bin" export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi
export VISUAL="vim"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

#Personal
#source /etc/profile.d/vte-2.91.sh
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export HISTSIZE=5000
export PAGER=less
export PSQL_EDITOR=/usr/bin/vim

#Powerline themes
#if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
#fi


#POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='awesome-patched'

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#Setting the GEM_PATH and GEM_HOME variables may not be necessary, check 'gem env' output to verify whether both variables already exist 
 GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
 GEM_PATH=$GEM_HOME
 COMPOSER_PATH=~/.composer/vendor/bin
 export PATH=$PATH:$GEM_HOME/bin:$COMPOSER_PATH

# alias subl='subl3'

extract () {
if [ -f $1 ] ; then
 case $1 in
   *.tar.bz2)   tar xvjf $1    ;;
   *.tar.gz)    tar xvzf $1    ;;
   *.tar.xz)    tar xvJf $1    ;;
   *.bz2)       bunzip2 $1     ;;
   *.rar)       unrar x $1     ;;
   *.gz)        gunzip $1      ;;
   *.tar)       tar xvf $1     ;;
   *.tbz2)      tar xvjf $1    ;;
   *.tgz)       tar xvzf $1    ;;
   *.zip)       unzip $1       ;;
   *.Z)         uncompress $1  ;;
   *.7z)        7z x $1        ;;
   *.xz)        unxz $1        ;;
   *.exe)       cabextract $1  ;;
   *)           echo "\`$1': unrecognized file compression" ;;
 esac
else
 echo "\`$1' is not a valid file"
fi
}
alias yaourt_upgrade_all='yaourt -Syyua'
source ~/Projects/docker-aliases/aliases.sh
