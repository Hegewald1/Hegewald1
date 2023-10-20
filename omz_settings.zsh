# asdf path
. "$HOME/.asdf/asdf.sh"

# Theme:
ZSH_THEME="af-magic"

# Plugins:
plugins=(git rails ruby bundler chucknorris history zsh-autosuggestions zsh-syntax-highlighting brew)
source $ZSH/oh-my-zsh.sh

# Exports:
export DATABASE_USERNAME=postgres
export SSH_AUTH_SOCK=~'secret'
export ZSH="$HOME/.oh-my-zsh"

# Aliases
alias zs="nano ~/.zshrc"
alias zsa="nano ~/Desktop/repos/Hegewald1/omz/aliases.zsh"

alias vpnlogs="journalctl -u NetworkManager.service -fx"

# Folders
alias fbs="cd ~/Desktop/repos/whitelabels/fbs"
alias ops="cd ~/Desktop/repos/whitelabels/ops"
alias wl="cd ~/Desktop/repos/whitelabels/fbs"
alias gom="cd ~/Desktop/repos/new_gomule/gomule"
alias hw1="cd ~/Desktop/repos/Hegewald1"

# Random - Might delete or change later
alias urp="unicorn_rails -p 3000"

