FILES=~/.config/environment.d/*
for f in $FILES
do
  while read -r l; do
    eval export "$l"
  done < <(grep . "$f")
done

[ -r "$XDG_CONFIG_HOME/priv/stuff.bash" ] && . "$XDG_CONFIG_HOME/priv/stuff.bash"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if [ -x "$(command -v pyenv)" ]; then
  eval "$(pyenv init --path)"
fi

