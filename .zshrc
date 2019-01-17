# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/home/lois/.gem/ruby/2.5.0/bin:$HOME/.scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/lois/.oh-my-zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME=agnoster #gitster #bullet-train #oxyde #ys #amuse

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  common-aliases
  extract
  colored-man-pages
  colorize
  cp
  archlinux
  zsh-syntax-highlighting
  web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'
export BROWSER='google-chrome-stable'

export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export SPARK_HOME="/opt/spark/spark-2.3.2-bin-hadoop2.7"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# CD Aliases
alias dl="cd ~/Downloads"
alias doc="cd ~/Documents"

# EPFL courses
alias ada="cd /home/lois/Documents/EPFL/MA1/Applied\ Data\ Analysis"
alias fos="code /home/lois/Documents/EPFL/MA1/Foundation\ of\ Software"
alias nlp="cd /home/lois/Documents/EPFL/MA1/Introduction\ to\ Natural\ Language\ Processing"
alias ml="cd /home/lois/Documents/EPFL/MA1/Machine\ Learning"
alias nm="cd /home/lois/Documents/EPFL/MA1/Numerical\ Methods\ for\ Visual\ Computing"
alias mc="cd /home/lois/Documents/EPFL/MA1/Markov\ Chains\ and\ Algorithmic\ Applications"
alias epfl='cd /home/lois/Documents/EPFL/MA1'
alias vpn='sudo epfl-vpn -f'

# Coding utils 
alias lab='git pull; jupyter-lab'
alias anaconda="conda activate"
alias py="conda activate full"
alias java8='sudo archlinux-java set java-8-openjdk'
alias java10='sudo archlinux-java set java-10-openjdk'

# Systems shortcuts
alias restart='kquitapp plasmashell && kstart  plasmashell'
alias restartdm='sudo systemctl restart display-manager'
alias zshrc="$EDITOR ~/.zshrc"
alias fs="amixer -c0 sset 'Headphone Mic Boost' 10dB"
alias ssh_key='cat /home/lois/.ssh/id_rsa.pub'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
# Applications
alias yt2mp3='youtube-dl -x --audio-format mp3'
alias yt2flac='youtube-dl -x --audio-format flac'
alias spellcheck='aspell -c -d en'
alias weather='curl http://wttr.in/Blonay'
alias ipinfo='curl ipinfo.io'
alias sv='sudo vim'
alias v='vim'
alias cpu='watch -n.1 "cat /proc/cpuinfo | grep \"^[c]pu MHz\""'
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Remote locations
alias iccluster='ssh -i ~/.ssh/key lbilat@iccluster028.iccluster.epfl.ch' 
alias vps='ssh -i ~/.ssh/key floc@vps.floculation.ch'

prompt_dir() {
  prompt_segment blue black "${PWD##*/}"
}

# Custom cd option
mycd() {
  if [ -z "$1" ]
    then
      cd ~/
    else
      cd "$1"
      ls
  fi
}
mk() {
  mkdir -p "$@" && cd "$@"
}

alias cd='mycd'
alias cdh='cd ~/'

# Spaceship theme options
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=0
SPACESHIP_CONDA_SYMBOL=

# Enable conda 
. /opt/anaconda/etc/profile.d/conda.sh
