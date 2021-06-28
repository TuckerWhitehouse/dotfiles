UNAME_MACHINE="$(/usr/bin/uname -m)"
if [[ "${UNAME_MACHINE}" == "arm64" ]]
then
  # On ARM macOS, this script installs to /opt/homebrew only
  HOMEBREW_PREFIX="/opt/homebrew"
else
  # On Intel macOS, this script installs to /usr/local only
  HOMEBREW_PREFIX="/usr/local"
fi

# Add `/homebrew/bin` to the `$PATH`
eval $(${HOMEBREW_PREFIX}/bin/brew shellenv)

# Change the `brew cask` install location
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
