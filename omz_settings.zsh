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

# Lists the 30 most recently pull requests for the git repository hosted on github
# Displays a preview with the information abount the PR
# Enter to checkout the pull request
# Dependencies: fzf, tail, awk, xargs and gh
function ghpr() {
  if [ "$(tput cols)" -gt "120" ]; then
    window_location=right
  else
    window_location=down
  fi
  GH_FORCE_TTY=100% gh pr list | tail -n +5 | fzf --ansi --preview 'GH_FORCE_TTY=100% gh pr view {1}' --preview-window $window_location --bind 'ctrl-j:preview-down,ctrl-k:preview-up' | a$
}
alias brave='open -a "Brave Browser.app" --args --profile-directory=Default'
reset_db() {
    if [[ $(pwd) == *"fbs"* ]]; then
        bundle exec rake db:drop RAILS_ENV="${1:-test}" && \
        bundle exec rake db:create RAILS_ENV="${1:-test}" && \
        SAFETY_ASSURED=1 bundle exec rake db:migrate RAILS_ENV="${1:-test}"
    else
        echo "Error: This command can only be run from within an fbs directory"
    fi
}
alias rubofix='g diff --name-only --diff-filter=d --cached | grep -v 'db/schema.rb' | xargs bundle exec rubocop -a'

