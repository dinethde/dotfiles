export PATH=/opt/homebrew/bin:$PATH

bindkey -v

# nvm configs
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Source .env for API keys (not tracked in git)
source "$HOME/dotfiles/zsh/.env"


# bun completions
[ -s "/Users/dinethdesilva/.bun/_bun" ] && source "/Users/dinethdesilva/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
