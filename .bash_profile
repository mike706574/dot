export BASH_SILENCE_DEPRECATION_WARNING=1

export BASH_PROFILE_EXECUTED=1

[[ "$BASH_RC_EXECUTED" != 1 ]] && source ~/.bashrc

export BASH_PROFILE_EXECUTED=""

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# go
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
