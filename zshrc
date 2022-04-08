# alias subl="open -a /Applications/Sublime\ Text.app"
alias mux='tmuxinator'
alias astart='tmuxinator start application'
alias astop='tmuxinator stop application'
alias istart='tmuxinator start integrations'
alias istop='tmuxinator stop integrations'
alias rkm='bundle exec rake db:migrate'
alias rkr='bundle exec rake db:reset'
alias rks='bundle exec rake db:migrate:status'
alias rkt='bundle exec rake'
alias gfrm="git fetch && git rebase origin/master"
alias wip="git commit -m 'WIP'"
alias glogg="git log --oneline --graph --decorate"
alias gref="git reflog --format='%C(auto)%h %<|(17)%gd %C(blue)%ci%C(reset) %s'"
alias fixup="git commit --fixup HEAD"
alias gbi="git branch | fzf | sed 's+remotes/origin/++g' | xargs git checkout"
alias gbx="git branch | fzf | sed 's+remotes/origin/++g' | xargs git branch -D"
alias expose="ssh -N -R 11223:localhost:3000 tunnelbroker@wormhole.dext.pub"

# Kubectl
# How do I start a rails console in my Demo Scene?
# https://receiptbank.atlassian.net/wiki/spaces/DEV/pages/1338310657/Demo+scenes+and+Kubernetes+clusters+FAQ#How-do-I-start-a-rails-console-in-my-Demo-Scene%3F
# alias kubedemo='kubectl --kubeconfig=/Users/marin.takanov/.kube/demo_cluster.yml'
# alias kubestaging='kubectl --kubeconfig=/Users/marin.takanov/.kube/staging_cluster.yml'
# alias kubeproduction='kubectl --kubeconfig=/Users/marin.takanov/.kube/production_cluster.yml'
# alias kubeinfrastructure='kubectl --kubeconfig=/Users/marin.takanov/.kube/infrastructure_cluster.yml'

# Docker
#alias dpods='kubectl --kubeconfig=/Users/marin.takanov/.kube/demo_cluster.yml get pods'
# alias dpods='f() { kubedemo -n $1 get pods };f'
# alias d='f() { kubedemo -n $1 exec -ti $2 -- /bin/bash };f'
# alias s='bin/kuby one-off monolith --kubeconfig ~/.kube/staging_cluster.yml'
# alias j='bin/kuby one-off monolith --kubeconfig ~/.kube/production_cluster.yml --jump'
alias jump-one-off="cd ~/Projects/docker && tsh login --proxy=teleport.prod.rbank-int.com:443 --request-roles=jump_production_monolith_oneoff  && tsh kube login production-cluster && bin/kuby one-off monolith --context production-teleport-cluster-production-cluster"
alias staging-jump="cd ~/Projects/docker && tsh login --proxy=teleport.staging.rbank-int.com:443 --request-roles=jump_staging_monolith_oneoff  && tsh kube login staging-cluster    && bin/kuby one-off monolith --context staging-teleport-cluster-staging-cluster"
# alias s='sh ~/Misc/staging.sh'

# Precision
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
alias devenv="./vendor/bin/devenv"

# staging_ssh () {
#     ssh -t "marin-takanov@$1" 'sudo -u rbank rb-run-container -c "bundle exec rails c"'
# }

# j () {
#   ssh -t jump $'if [ -z $(docker ps|grep $(whoami)|awk \'{print $1}\') ]; then rc monolith; else (docker attach $(docker ps|grep $(whoami)|awk \'{print $1}\')); fi'
# }

# export EDITOR="subl"
export EDITOR="code -w"

export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/postgresql@12/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@12/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@12/lib/pkgconfig"

# export PATH=$PATH:/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

autoload -U promptinit; promptinit
prompt pure

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
RPROMPT="[%D{%y/%m/%f}|%@]"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marin.takanov/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bundler
  gem
  rails
  rake
  rbenv
  ruby
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GPG_TTY=$(tty)
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
