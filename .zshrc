#zmodload zsh/zprof
# Path to your oh-my-zsh installation.
export ZSH=/Users/tangyue/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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

export NVM_LAZY_LOAD=true

#plugins=(git brew capistrano encode64 pip macos autojump common-aliases docker docker-compose bower kubectl argocd)
plugins=(git brew capistrano encode64 pip macos autojump common-aliases bower kubectl argocd)

export PATH="/usr/local/opt/openssl/bin:/usr/local/opt/gettext/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# User configuration
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

#eval $(docker-machine env default)

source $ZSH/oh-my-zsh.sh

# eval "$(pipenv --completion)"

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
export EDITOR=vim
export LESS=FRX
#export DJANGO_SETTINGS_MODULE=bolome_wechat.tang_settings

alias vi=vim
alias pup='export https_proxy=socks5://127.0.0.1:13659;export http_proxy=socks5://127.0.0.1:13659'
alias pdown='unset https_proxy;unset http_proxy;unset all_proxy;'
alias ipgs='curl cip.cc'
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias argo='argo -n argo'
alias k='kubectl'
alias dfimage='docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage'
#alias exiftool='exiftool -G -d "%F %T%z"'
#
#zprof
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home/
export MAVEN_HOME=/usr/local/apache-maven-3.6.3
export HADOOP_HOME=/usr/local/hadoop-2.8.5
export PATH=$MAVEN_HOME/bin:$HADOOP_HOME/bin:$JAVA_HOME/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export PYTHONDONTWRITEBYTECODE=1
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#eval "$(goenv init -)"
#export PATH="$HOME/.goenv/shims:$HOME/go/bin:$PATH"
#export GOPATH="$HOME/go"
#
#source ~/.argo_com.zsh
#
#export KUSION_HOME="$HOME/.kusion"
#
#export PATH="$KUSION_HOME/bin:$PATH"
#export PATH="$KUSION_HOME/kclvm/bin:$PATH"
#export PATH="/root/go/bin:$PATH"
#export PATH="$HOME/.ssctl/bin:$PATH"
#
#source "$HOME/.kusionup/env"
