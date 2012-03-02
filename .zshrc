# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git nyan rbenv)

source $ZSH/oh-my-zsh.sh

alias rm='rm -i'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

export PATH="/opt/node/bin:$PATH"

alias tree="tree -C"
alias be='nocorrect bundle exec'
alias knife='nocorrect knife'
alias sudo='nocorrect sudo'

export EDITOR=vim

alias tmux="tmux -2"

export PREFIX="/home/jshou/local"
alias mpc='mpc -f "%album% -- %track% %title%"'
export PATH="/usr/local/bin/idea-IC-111.277/bin:/usr/local/bin/apache-maven-3.0.4/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-6-sun"
export PATH="/usr/local/mysql/bin:$PATH"
export ANDROID_HOME='/home/jshou/android-sdk-linux_x86/'

# WINE WINE WINE
prefix() {
    export WINEPREFIX="$HOME/.local/share/wineprefixes/$1"
}

goc() {
    cd $WINEPREFIX/drive_c
}

lsp() {
    ls $* $HOME/.local/share/wineprefixes
}

run() {
    prefix $1
    goc
    wine cmd /c run-$1.bat
}
