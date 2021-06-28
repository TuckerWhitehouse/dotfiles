#!/usr/bin/env zsh

# Enable TouchID for `sudo`
# https://twitter.com/cabel/status/931292107372838912?s=20
if [ $(grep -q "pam_tid.so" /etc/pam.d/sudo; printf $?) -ne 0 ]; then
  sudo sed -i~ '2i\
    auth       sufficient     pam_tid.so
    ' /etc/pam.d/sudo
fi


# TODO: A better check for xcode-select
if [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; then
  xcode-select --install
fi


# Modifying the Finder Sidebar requires `mysides` (installed via Homebrew)
# https://github.com/MartinHarding/macOSuckless#better-sidebar-defaults
mysides remove all
mysides add `whoami` "file://${HOME}"
mysides add "Desktop" "file://${HOME}/Desktop"
mysides add "Documents" "file://${HOME}/Documents"
mysides add "Downloads" "file://${HOME}/Downloads"
mysides add "Applications" "file:///Applications"


# 1Password complains if it's not in the /Applications folder
mv "${HOME}/Applications/1Password.app" "/Applications/1Password.app"