# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/garymann/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="steeef"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# direnv
if which direnv >/dev/null; then
  eval "$(direnv hook zsh)"
fi

# ruby
if which rbenv >/dev/null; then
  eval "$(rbenv init -)"
fi

# python
if which pyenv >/dev/null; then
  eval "$(pyenv init -)"
fi

if which starship >/dev/null; then
  # eval "$(starship init zsh)"
fi

export NVM_DIR="$HOME/.nvm"

# Ohmyzsh provides the prompt info
export VIRTUAL_ENV_DISABLE_PROMPT=1

# better and safer defaults
export LESS="-F -R -X" # colors, skip 1 screen pager
alias rm='rm -i' # prompt to remove files

setopt ignoreeof # don't logout with ^D
unsetopt LIST_BEEP  # No beeps at completion

# Update PATH
PATH="$PATH:$HOME/Library/Python/3.9/bin"
PATH="$PATH:$HOME/go/bin"
PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH

# rust
[ -s "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && . "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && . "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"

# haskell
[ -s "${HOME}/.ghcup/env" ] && source "${HOME}/.ghcup/env"

# carapace completions
source <(carapace _carapace)

# sdkman integration
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
