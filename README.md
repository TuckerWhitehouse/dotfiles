# dotfiles

Inspired by: https://github.com/holman/dotfiles & https://github.com/mathiasbynens/dotfiles

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/Brewfile**: Any file named `Brewfile` will trigger `brew bundle` when you run `script/install`.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
git clone https://github.com/TuckerWhitehouse/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dotfiles` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dotfiles` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

# VSCode Settings
~/Library/Application Support/Code/User/settings.json
```json
{
  "explorer.confirmDelete": false,
  "workbench.startupEditor": "newUntitledFile",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "editor.minimap.enabled": false,
  "editor.renderWhitespace": "all",
  "eslint.options": {
    "ignorePath": ".gitignore"
  }
}
```
