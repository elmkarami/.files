# Path to your oh-my-zsh installation.
export ZSH=/Users/elmehdi/.oh-my-zsh
export PYTHONSTARTUP=/Users/elmehdi/.pythonstartup
export PATH=$HOME/bin:/usr/local/bin:$PATH
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
plugins=(git)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh
export PATH=$PATH:/usr/local/sbin

#------ Alias ------
# Git
alias gp='git pull'
alias gpo='git pull origin'
alias gps='git push'
alias gpsu='git push origin'
alias gr='git rebase'
alias gm='git merge'
alias gc='git commit'
alias ga='git add'
alias gco='git checkout'
#
## Youtube-dl
alias y2mp3='youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"'
alias y2vid='youtube-dl -o "%(title)s.%(ext)s"'
alias y2p='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'

# Android emulator
alias emulator='$ANDROID_HOME/tools/emulator -avd Nexus_5X_API_24'

# Posgtres
alias start_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Docker compose
alias dc='docker-compose'

# Python
alias clean_pyc='find . -name "*.pyc" -exec rm -rf {} \;'

# Docker
alias clean_docker='docker stop $(docker ps -a -q) && docker rm -f $(docker ps -aq) && docker system prune --volumes'

# Clear screenshots
alias remove_screenshots='find . -name "Screen Shot 20*"  -exec rm -rf {} \;'

# Kubectl

#alias kube_token='kubectl config view | grep -A10 "name: $(kubectl config current-context)" | awk '"'"'$1=="access-token:"{print $2}'"'"'

# VLC
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

export PATH=$PATH:/usr/local/terraform/bin
export ANDROID_HOME=/Users/elmehdi/Library/Android/sdk

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval $(thefuck --alias)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/elmehdi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/elmehdi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/elmehdi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/elmehdi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv init -)"
