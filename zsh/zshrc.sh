# Vars
	HISTFILE=~/.zsh_history
	SAVEHIST=1000 
	setopt inc_append_history # To save every command before it is executed 
	setopt share_history # setopt inc_append_history

# Aliases
	alias v="vim -p"
	alias ls="ls --color=auto --group-directories-first -h"
	alias lsa="ls --color=auto --group-directories-first -hA"
	alias ll="ls --color=auto --group-directories-first -hl"
	alias lla="ls --color=auto --group-directories-first -hlA"
	
	# This is currently causing problems (fails when you run it anywhere that isn't a git project's root directory)
	# alias vs="v `git status --porcelain | sed -ne 's/^ M //p'`"

# Settings
	export VISUAL=vim
	export PATH=$PATH:/$HOME/dot/bin

source ~/dot/zsh/plugins/fixls.zsh

#Functions
	# Custom cd
	c() {
		cd $1;
		ls;
	}
	alias cd="c"

# For vim mappings: 
	stty -ixon

source ~/dot/zsh/plugins/oh-my-zsh/lib/history.zsh
source ~/dot/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source ~/dot/zsh/plugins/oh-my-zsh/lib/completion.zsh
source ~/dot/zsh/plugins/vi-mode.plugin.zsh
source ~/dot/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dot/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dot/zsh/keybindings.sh

# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

source ~/dot/zsh/prompt.sh
