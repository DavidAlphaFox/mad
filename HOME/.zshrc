#         _________  _   _ ____   ____
#        |__  / ___|| | | |  _ \ / ___|
#         / /\___ \| |_| | |_) | |
#       / /_ ___) |  _  |  _ <  |___
# [ ] /____|____/|_| |_|_| \_\\____|

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="bira"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# User set startup commands
printf "\n"
neofetch
#colorscript -r

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats ' %s(%F{yellow}%b%f)'

PS1='%F{magenta}[%~]%f $vcs_info_msg_0_%F{red}&%f '

# Alias
alias clr='echo > ~/.zsh_history && history -c && clear'
alias grep='grep --color=auto'

alias ls='exa'
alias l='exa -l -a'
alias la='exa -a'

#alias la='ls --color=auto -A'
#alias ls='ls --color=auto'

alias gpo='g++ -o'
alias gco='gcc -o'

alias neovide='neovide --nofork'
alias nmg='neovide --multigrid'
alias nvidefig='neovide ~/.config/nvim/init.vim ~/.config/nvim/user-modules/plugs.vim ~/.config/nvim/user-modules/start-up.vim ~/.vimrc'
alias nvimfig='nvim -p ~/.config/nvim/init.vim ~/.config/nvim/user-modules/plugs.vim ~/.config/nvim/user-modules/start-up.vim ~/.vimrc'

alias pac='pacman'
alias pacman='sudo pacman'

alias please='sudo'
alias pls='sudo'

alias update='paru -Syu'
alias v2t='mpv --no-config --pause --vo=tct'
alias ytwav='yt-dlp -x --audio-format wav'

#gitalias
alias gitpo='git push origin'
alias gitc='git commit -m'
alias ga='git add .'

# Typo
#pacman
alias ppacman='pacman'
alias pacmna='pacman'
alias pamcna='pacman'
alias pamcan='pacman'
#pac
alias pca='pacman'

# Functions
mkcd () { mkdir -p "$1" && cd "$1"; }
