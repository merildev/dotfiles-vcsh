#!/usr/bin/env bash
# ~/.profile

# Add local binaries to path
export PATH=$PATH:/home/meril/.local/bin
export PATH=$PATH:/home/meril/.yarn/bin
export PATH=$PATH:/home/meril/.cargo/bin
export PATH=$PATH:/home/meril/go/bin
export PATH=$PATH:/home/meril/.emacs.d/bin
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

# Better history
export HISTCONTROL="erasedups:ignoreboth"
export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear:gpg"

# Default apps
export EDITOR="em"
export VISUAL="em"
export BROWSER="firefox"
export GNUPGHOME="$HOME/.gnupg"

# Wayland apps
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland-egl
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_WAYLAND_FORCE_DPI=physical
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1
export XDG_CONFIG_HOME=/home/meril/.config
export DOOMDIR="$XDG_CONFIG_HOME/doom-emacs"

# gpg
GPG_TTY=$(tty)
export GPG_TTY

# fzf
export FZF_DEFAULT_OPTS=--bind=ctrl-l:accept
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#cbe3e7,bg:#100e23,hl:#91ddff --color=fg+:#a6b3cc,bg+:#565575,hl+:#65b2ff --color=info:#95ffa4,prompt:#ff8080,pointer:#906cff --color=marker:#62d196,spinner:#c991e1,header:#ffe9aa'

# Misc.
[ -r "$HOME/.config/priv/stuff.bash" ] && . "$HOME/.config/priv/stuff.bash"
export XZ_DEFAULTS="-T 0"

if [ "$(ls /dev/dri/ | grep -c card)" == "2" ]; then
  export WLR_DRM_DEVICES=/dev/dri/card0:/dev/dri/card1
fi
