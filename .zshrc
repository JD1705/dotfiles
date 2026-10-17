# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    python
    pip
    ubuntu
    colored-man-pages
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias EWW="~/eww/target/release/eww"

ytp() {
    if [ -z "$1" ]; then
        echo "Use: ytp [URL_DE_YOUTUBE]"
        return 1
    fi
    url=$(yt-dlp -g --format="bestaudio" "$1")
    if [ $? -eq 0 ]; then
        mpc add "$url"
        mpc play
    else
        echo "Error while extracting the audio"
    fi
}

yt-d() {
    if [ -z "$1" ]; then
        echo "Use: yt-d [YOUTUBE_URL]"
        return 1
    fi
    url=$(yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "~/Music/%(title)s.%(ext)s" "$1")
}

alias ytsurf="~/.local/bin/ytsurf"
alias dwarffortress="~/Downloads/Dwarf\ Fortress/run_df.sh"
alias connect-termux="ssh u0_a389@192.168.1.5 -p 8022"
alias zsh-source="source ~/.zshrc"
alias pokemmo="MESA_LOADER_DRIVER_OVERRIDE=iris flatpak run com.pokemmo.PokeMMO"
alias kanarenshu="~/kanarenshu/kanarenshu"
alias zigoku="~/Downloads/zigoku-v0.2.1-x86_64-linux-musl/zigoku"
alias clear="pyroclear"
alias aiderg="aider --model gemini/gemini-3.8-flash"

export GEMINI_API_KEY="AQ.Ab8RN6LohUB0o0fkIREDZHGHV7zdhXJUVgh95smJO9AUico0Ow"
export NVM_DIR="$HOME/.nvm"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=kvantum
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(starship init zsh)"

# opencode
export PATH=/home/jd1705/.opencode/bin:$PATH
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export DRIFT_TIMEOUT=300
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="st-256color"
eval "$(drift shell-init zsh)"
eval "$(zoxide init zsh)"

# terminal opening messages
if tmux ls 2>/dev/null | grep -q "^"; then
    notify-send -i "terminal" "Welcome to Tmux, JD" "Enjoy your session"
else
    notify-send -i "utilities-terminal" "Active Terminal" "Welcome, JD..."
fi

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
