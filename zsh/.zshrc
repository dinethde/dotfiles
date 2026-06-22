export PATH=/opt/homebrew/bin:$PATH

bindkey -v

# nvm configs
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Source .env for API keys (not tracked in git)
source "${0:A:h}/.env"

