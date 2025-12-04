export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew";
export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar";
export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew";
#export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin${PATH+:$PATH}";
#export MANPATH="/home/linuxbrew/.linuxbrew/share/man${MANPATH+:$MANPATH}:";
#export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:${INFOPATH:-}";

function _brew-remove() {
  export PATH=$(echo $PATH | sed -r -e 's|/home/linuxbrew/[^:]*:?||g' -e 's/:*$//' )
  export MANPATH=$(echo $MANPATH | sed -r -e 's|/home/linuxbrew/[^:]*:?||g' -e 's/:*$//' )
  export INFOPATH=$(echo $INFOPATH | sed -r -e 's|/home/linuxbrew/[^:]*:?||g' -e 's/:*$//' )
}

function brew-remove() {
  _brew-remove
  _chezmark_verbose $PATH
}

function brew-append() {
  _brew-remove
  export PATH=$PATH:/home/linuxbrew/.linuxbrew/sbin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin
  export MANPATH=$MANPATH:/home/linuxbrew/.linuxbrew/share/man
  export INFOPATH=$INFOPATH:/home/linuxbrew/.linuxbrew/share/info
  _chezmark_verbose  $PATH
}

function brew-prepend() {
  _brew-remove
  export PATH=/home/linuxbrew/.linuxbrew/sbin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH
  export MANPATH=/home/linuxbrew/.linuxbrew/share/man:$MANPATH
  export INFOPATH=/home/linuxbrew/.linuxbrew/share/info:$INFOPATH
  _chezmark_verbose $PATH
}

if [ -d /home/linuxbrew ]; then
    brew-append
fi
