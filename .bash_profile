# Export bash_profile configs
export BASH_CONF="bash_profile"
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
# use control-t to open new terminal tab from working director
bind '"\C-t":"open . -a iterm \x0a clear \x0a"'
# use .bash_aliases file to load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
# use .bash_completions file to load tab-completes for specific commands
if [ -f ~/.bash_completions ]; then
. ~/.bash_completions
fi
# change color for grep highlighting
export GREP_COLOR='1;39'
# use bash-completion with homebrew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
