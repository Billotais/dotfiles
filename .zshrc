# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.scripts:/home/lois/.local/bin:$HOMEs/scripts:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/lois/.oh-my-zsh
export QT_QPA_PLATFORMTHEME="qt5ct"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="spaceship" #=agnoster #gitster #bullet-train #oxyde #ys #amuse

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
export BROWSER='chromium'

export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export SPARK_HOME="/opt/spark/spark-2.3.2-bin-hadoop2.7"
export JAVA_HOME="/usr/lib/jvm/java-12-openjdk"

setopt autocd
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# CD Aliases
alias dl="cd ~/Downloads"
alias doc="cd ~/Documents"
alias xyz='cd ~/Documents/bilat.xyz'
# EPFL Aliases

alias epfl='cd /home/lois/Documents/EPFL/MA3'
alias vita='cd /home/lois/Documents/EPFL/MA3/Project'
alias tcpip='cd /home/lois/Documents/EPFL/MA3/TCP\ IP/'
alias xml='cd /home/lois/Documents/EPFL/MA3/Foundations\ and\ tools\ for\ processing\ tree\ structured\ data/'
alias icc='cd /home/lois/Documents/EPFL/MA3/ICC'
alias tqi="cd /home/lois/Documents/EPFL/MA3/Traitement\ quantique\ de\ l\'information/"
# Coding utils 
alias lab='jupyter lab'
alias java8='sudo archlinux-java set java-8-openjdk'
alias java12='sudo archlinux-java set java-12-openjdk'
alias py='conda activate base'
alias nb='jupyter notebook'

# Systems shortcuts
alias restart='kquitapp plasmashell && kstart  plasmashell'
alias restartdm='sudo systemctl restart display-manager'
alias zshrc="$EDITOR ~/.zshrc"
alias i3config="$EDITOR ~/.config/i3/config"
alias fs="amixer -c0 sset 'Headphone Mic Boost' 10dB"
alias ssh_key='cat $SSH_KEY_PATH'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias netreset='nmcli con up e8e98143-ce08-3e84-a36a-0966af22362a' 
alias top='htop'
alias flicker='sudo bash -c "echo 'high' > /sys/class/drm/card0/device/power_dpm_force_performance_level"'

# Applications
alias yt2mp3='youtube-dl -x --audio-format mp3'
alias yt2flac='youtube-dl -x --audio-format flac'
alias spellcheck='aspell -c -d en'
alias weather='curl http://wttr.in/Blonay'
alias ipinfo='curl ipinfo.io'
alias sv='sudo vim'
alias v='vim'
alias c='code'
alias cpu='watch -n.1 "cat /proc/cpuinfo | grep \"^[c]pu MHz\""'
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# Remote locations
alias iccluster='ssh -i ~/.ssh/key lbilat@iccluster028.iccluster.epfl.ch' 
alias vps='ssh -i ~/.ssh/key floc@vps.floculation.ch'
alias pi='ssh -i ~/.ssh/key -X pi@ip.bilat.xyz -p 314'
alias pc='ssh -i ~/.ssh/key -X -L 8888:localhost:8888 lois@ip.bilat.xyz -p 42'
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

# added by Miniconda3 4.5.12 installer
.  ~/anaconda/etc/profile.d/conda.sh
conda activate
