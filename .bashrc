#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
#export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
#export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
#export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.4.1/jars"
#export AWS_ELB_HOME="/usr/local/Library/LinkedKegs/elb-tools/jars"
#export PYTHONPATH="/opt/graphite/webapp/"
export PATH=$HOME/bin:/usr/local/bin:/Developer/usr/bin:/usr/local/share/npm/bin:/usr/local/sbin:$PATH

export EDITOR='/usr/local/bin/vim'
export IGNOREEOF=20
export GIT_SERVER=git@git.mediagobbler.com

alias h='history'
alias hig='history | ag'
alias j='jobs -l'
alias d='dirs'
alias pd='pushd'
alias po='popd'
alias so='source'
alias ls='ls -aCFG'
alias vi='/usr/local/bin/vim'
alias be='bundle exec'
alias 1='pushd 1'
alias 2='pushd 2'
alias 3='pushd 3'
alias 4='pushd 4'

alias be='bundle exec'
alias bi='bundle install'
alias bl='bundle list'
alias bu='bundle update'
alias bp='bundle package'

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
  alias ls="ls --color=always"
fi
which gshuf &> /dev/null
if [ $? -eq 1 ]
then
  alias shuf=gshuf
fi

alias c='clear'
alias k='clear'
alias cls='clear'

alias rb='ruby'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back

# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias   md='mkdir -p'
alias   rd='rmdir'

# rvm
alias rvmr='rvm rvmrc trust; rvm rvmrc load; rvm reload ; rvm info'
alias rvml='rvm list'

# git
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gf='git fetch origin'
alias gp='git push'
alias gpo='git push origin'
alias gc='git commit -n -m'
alias gca='git commit -v -a'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gd='git diff'
alias gcm='git checkout master'
alias gpm='git pull origin master'
alias gc-='git checkout -'
# alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'

# Gobbler commands
alias ssh-mkt='ssh -i ~/.ec2/users/mam/keys/West\ US/key-azure_qa.pem ubuntu@shop.gobbler-qa.com'
alias stop-mkt='launchctl unload /usr/local/opt/gob_marketplace/homebrew.mxcl.gob_marketplace.plist'
alias start-mkt='launchctl load /usr/local/opt/gob_marketplace/homebrew.mxcl.gob_marketplace.plist'
alias stop-pace='launchctl unload /usr/local/opt/gob_pace_server/homebrew.mxcl.gob_pace_server.plist'
alias start-pace='launchctl load /usr/local/opt/gob_pace_server/homebrew.mxcl.gob_pace_server.plist'
alias stop-resque-mkt='launchctl unload /usr/local/opt/gob_mkt_worker/homebrew.mxcl.gob_mkt_worker.plist'
alias lrm='cd ~/src/gob_marketplace'

# Rails
alias dbreset='cd ~/src/gob_marketplace; bundle exec rake db:drop db:create db:migrate db:seed; cd ~/src/collab; bundle exec rake db:seed'

alias srvr='python -m SimpleHTTPServer 8000'
alias chr='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security'
alias cuc='be cucumber features'
alias vcr='rm -rf spec/vcr_cassettes/*'
alias redstart='/usr/local/opt/redis/bin/redis-server /usr/local/etc/redis.conf'
alias redstop='redis-cli -h 127.0.0.1 -p 6379 shutdown'

# if [ -z "$EDITOR" ]; then
#     case $OSTYPE in
#       linux*)
#         alias gd='git diff | vim -R -'
#         ;;
#       darwin*)
#         alias gd='git diff | subl'
#         ;;
#       *)
#         alias gd='git diff'
#         ;;
#     esac
# else
#     alias gd="git diff | $EDITOR"
# fi

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

source ~/.bash_prompt
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
