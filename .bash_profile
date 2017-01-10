[ -r ~/.bashrc ] && source ~/.bashrc
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
## Gobbler
source ~/src/mam/config/mam-profile.bash

## Chef
source ~/src/mam_chef/scripts/mam_chef.bash

## rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
