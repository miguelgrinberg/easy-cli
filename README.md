# easy-cli
Easy, yet powerful, command line configuration based on zsh, tmux and vim.

## Installation Instructions

First of all, if you have an existing configuration for zsh, tmux or vim, back
up your files and remove them from your system, so that you start from a clean
slate.

### Step 1: Install zsh, tmux, vim and ctags

This step must be performed according to your operating system's method for
installing packages.

For Ubuntu:

```bash
sudo apt install zsh tmux vim ctags
```

For macOS:

```bash
brew install zsh tmux vim ctags
```

### Step 2: Change your shell to zsh

For most UNIX-based operating systems, this can be done with the following
command:

```bash
chsh -s /bin/zsh
```

### Step 3: Copy the configuration files

Copy the three configuration files from this repository into your home
directory. Remember to back up any existing config files before doing this.

```bash
git clone https://github.com/miguelgrinberg/easy-cli
cd easy-cli
cp .zshrc .tmux.conf .vimrc ~/
```

### Step 4: Log out and back in

Log out of your shell session and then open a new session. During the first
login a few plugins for `zsh` will be downloaded and installed.

As part of the installation, the `powerlevel10k` theme's own interactive
configuration script will run. Feel free to select your preferred settings for
the theme (which you can change as many times as you want later, by running the
`p10k configure` command).

The first time you run `vim`, a few plugins will be installed as well.

## Quick reference

### Zsh

Plugins for `zsh` are managed with the `zgenom` utility. You can change the
list of plugins installed by editing the `zgenom load` lines in `.zshrc`. The
installed plugins are:

- [powerlevel10k](https://github.com/romkatv/powerlevel10k): a highly configurable theme
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): command auto-completion as you type
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): syntax coloring as you type

You can customize the `powerlevel10k` theme by editing the `.p10k.zsh` config
file, or if you prefer, run the interactive configuration script with the
`p10k configure` command.

The [zsh documentation](https://zsh.sourceforge.io/Doc/Release/zsh_toc.html) is
the ultimate reference for configuration and use of this shell.

### Tmux

You can start a new `Tmux` session with the command `tmux new`. You can
reattach to a previously created session with `tmux attach`.

The `tmux` configuration defines `Ctrl-A` as the prefix key for all commands.
The following is a brief list of defined key bindings that you can use after
`Ctrl-A`:

- `c`: create a new window
- `d`: detach from the current session
- `n`: go to next window
- `p`: go to previous window
- `Ctrl-A`: go to last window
- `k`: kill current window
- `l`: repaint window
- `|`: split current window or pane vertically
- `-`: split current window or pane horizontally
- `r`: reload configuration file
- `a`: send `Ctrl-A` to inner `tmux` session

Mouse and clipboard are enabled and should work with most modern terminal
applications.

Consult the [tmux documentation](https://tmuxguide.readthedocs.io/en/latest/tmux/tmux.html)
to learn how to customize your installation to your liking.

### Vim

The `vim` configuration installs a few plugins that are useful for coding. You
can review the list by looking at the lines that begin with `Plug` near the top
of the configuration file.

If you add plugins, enter the command `:PlugInstall` to install them. If you
make more involved changes such as removing plugins, the easiest way to update
your installation is to delete the whole `~/.vim` directory, which will cause
a reinstall the next time the editor is launched.

Vim has extensive configuration options and a large number of plugins, so there
are lots of ways in which you can improve the default configuration and make it
your own. You can search for example configuration files on GitHub to get
inspiration from, as many developers make theirs available for others to learn
from.

Extensive documentation for `vim` can be found directly in the editor, via the
`:help` command. When you are done with the documentation pane, type `:q` to
dismiss it.

Note that this editor has a fairly steep learning curve. There is a
[vim cheat sheet](https://vim.rtorr.com/) that might help learn the basics.
