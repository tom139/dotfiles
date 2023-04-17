# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# enable brew completion (must remain before sourcing oh-my-zsh
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Enable brew
# eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(brew shellenv)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="afowler"
# ZSH_THEME="fishy"
# ZSH_THEME="intheloop"
# ZSH_THEME="my-afowler"

# this is required as site-funciton location changed in M1 https://github.com/sindresorhus/pure/issues/584
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

# load nvm
export NVM_LAZY_LOAD=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  node
  npm
  yarn
  vi-mode
  # brew
  # osx
  z
  # python
  aws
  # ruby
  docker
  docker-compose
  globalias
  # slack
  zsh-nvm # see https://github.com/lukechilds/zsh-nvm#as-an-oh-my-zsh-custom-plugin
)

source $ZSH/oh-my-zsh.sh

# setup vi-mode
INSERT_MODE_INDICATOR="%F{yellow}+%f"
bindkey -M viins 'jk' vi-cmd-mode

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

### my settings

# pyenv support
# pyenv MUST be installed
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# remove following lines to restore
#  export PYENV_ROOT="$HOME/.pyenv"
#  export PATH="$PYENV_ROOT/bin:$PATH"
#  eval "$(pyenv init --path)"
#  
#  # Load pyenv into the shell by adding
#  # the following to ~/.zshrc:
#  
#  eval "$(pyenv init -)"
#  
#  # Make sure to restart your entire logon session
#  # for changes to profile files to take effect.
#  eval "$(pyenv init - zsh)"

# NVM support
# nvm MUST be installed
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# use ruby from brew
export PATH="/usr/local/opt/ruby/bin:$PATH"

# set the prevent AWS to use a pager for all requests
export AWS_PAGER="jq"

### my aliases
alias https='http --default-scheme=https'
alias npm-exec='PATH=$(npm bin):$PATH'

alias L='less'
alias G='grep'
alias Y='yq e "." -'
alias J='--output json | jq'
alias pycharm='open -a PyCharm'
alias webstorm='open -a WebStorm'
alias vscode='open -a "Visual Studio Code"'
alias luca="say -v 'Luca'"
alias daniel="say -v 'Daniel'"
alias t='terraform'
alias ci='circleci'
alias confetti='open raycast://confetti'
alias ghpc='gh pr create --assignee @me -w'
alias ghpv='gh pr view -w || gh pr create --assignee @me -w'
alias watch_pr='(gh pr checks --watch -i 10 && open raycast://confetti) || osascript -e "display notification with title \"Ooops!\" subtitle \"Some checks failed in the PR.\" sound name \"Submarine\""'

# Gandalf Aliases
alias gan-mercury='gandalf request dataViewer@project:mercury-42 infrastructureOwner@project:mercury-42 --end "in 8h"'
alias gan-mercury-staging='gandalf request dataViewer@project:mercury-staging-42 infrastructureOwner@project:mercury-staging-42 --end "in 8h"'
alias gan-scrat='gandalf request dataViewer@project:scrat-42 infrastructureOwner@project:scrat-42 --end "in 8h"'
alias gan-scrat-staging='gandalf request dataViewer@project:scrat-staging-42 infrastructureOwner@project:scrat-staging-42 --end "in 8h"'
alias gan-scrat-development='gandalf request dataViewer@project:scrat-development-42 infrastructureOwner@project:scrat-development-42 --end "in 8h"'
alias gan-adapter='gandalf request dataViewer@project:adapter-42 infrastructureOwner@project:adapter-42 --end "in 8h"'
alias gan-adapter-staging='gandalf request dataViewer@project:adapter-staging-42 infrastructureOwner@project:adapter-staging-42 --end "in 8h"'
alias gan-adapter-development='gandalf request dataViewer@project:adapter-development-42 infrastructureOwner@project:adapter-development-42 --end "in 8h"'

# GitHub Aliases
alias gh-checks='gh pr checks --watch && daniel "all checks have passed" && echo " ✅ all checks have passed" || daniel "Some checks have failed" && echo " ❌ some checks have failed"'

# aliases in this array will not be expanded by globalias
# i.e. if you type `https<space>` it will be transformed to
# `http --default-scheme=https` unless `https` is in this list
export GLOBALIAS_FILTER_VALUES=(https ls z ll l grep luca daniel KEY pycharm webstorm vscode confetti)

export PATH="$HOME/.local/bin:$PATH"

# if the `.artifactory-setup.zsh` file exists, source it!
BSP_SETUP="$HOME/.bsp-setup.zsh"
if [[ -f "$BSP_SETUP" ]];
then
  source "$BSP_SETUP"
fi
unset ARTIFACTORY_SETUP

# used by gpg when signign commits
export GPG_TTY=$(tty)



autoload -U +X bashcompinit && bashcompinit

# To allow intallation of grpcio on M1
# export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
# export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
# export LDFLAGS="-L/opt/homebrew/opt/openssl/lib"
# export CFLAGS="-I/opt/homebrew/opt/openssl/include"


# to use vim as default visual editor
export EDITOR="nvim"
export VISUAL="nvim"

# Gandalf completions
source ~/.gandalf/completions.zsh

# Terraform autocompletion and parallelism
complete -o nospace -C /opt/homebrew/Cellar/tfenv/2.2.2/versions/1.1.2/terraform terraform
export TF_CLI_ARGS_plan="-parallelism=80"
export TF_CLI_ARGS_apply="-parallelism=80"

# GKE support
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# support for fuzzy search (install with homebrew if missing)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# enable vim mode
set -o vi

# kubernetes aliases
alias k='kubectl'
alias kg='kubectl get'
alias kd='kubectl describe'
alias krr='kubectl rollout restart'
alias kctx="kubectx"
alias kns="kubens"
alias kl="kubectl logs"
alias kjump="kubectl run jumpbox --image=gcr.io/registry-42/k8s-jumpbox:latest --override-type=strategic --overrides='{\"spec\":{\"nodeSelector\":{\"nodepool\":\"general-purpose\"},\"tolerations\":[{\"effect\":\"NoExecute\",\"key\":\"type\",\"value\":\"non-system\"}],\"securityContext\":{\"runAsNonRoot\":true,\"seccompProfile\":{\"type\":\"RuntimeDefault\"}},\"containers\":[{\"name\":\"jumpbox\", \"securityContext\":{\"allowPrivilegeEscalation\":false,\"capabilities\":{\"drop\":[\"ALL\"]}}}]}}' -- sleep infinity"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tp/google-cloud-sdk/completion.zsh.inc'; fi

complete -o nospace -C /usr/local/Cellar/tfenv/3.0.0/versions/1.4.0/terraform terraform
#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: gt completion >> ~/.zshrc
#    or gt completion >> ~/.zprofile on OSX.
#
_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt
###-end-gt-completions-###

