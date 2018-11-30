[ -r ~/.bashrc ] && source ~/.bashrc

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
## Gobbler
# source ~/src/mam/config/mam-profile.bash

## Chef
# source ~/src/mam_chef/scripts/mam_chef.bash

## rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rich/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/rich/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rich/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/rich/Downloads/google-cloud-sdk/completion.bash.inc'; fi
