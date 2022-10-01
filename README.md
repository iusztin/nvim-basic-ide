# Purpose

This is a fork of https://github.com/LunarVim/nvim-basic-ide that I customized for my personal workflow.
No guarantee of stability of features or non breaking changes.

## Requirements

- https://github.com/neovim/neovim/releases/tag/v0.8.0
- https://github.com/junegunn/fzf
- https://github.com/BurntSushi/ripgrep
- https://github.com/jesseduffield/lazygit
- https://github.com/gokcehan/lf

## Optional

- Clipboard manager (MacOS: pbcopy, Ubuntu: xsel, wl-clipboard, etc)

## Installation


```sh
git clone https://github.com/LunarVim/nvim-basic-ide.git ~/.config/nvim
```

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

## Fonts

Some menus depend on fonts that were patched with icons: https://www.nerdfonts.com/

## Configuration

### LSP

To add a new LSP

First Enter:

```
:LspInstallInfo
```

and press `i` on the Language Server you wish to install

Next you will need to add the server to this list: [servers](https://github.com/LunarVim/nvim-basic-ide/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/lsp/lsp-installer.lua#L6)

### Formatters and linters

Make sure the formatter or linter is installed and add it to this setup function: [null-ls](https://github.com/LunarVim/nvim-basic-ide/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/lsp/null-ls.lua#L13)
