# Purpose

Customization of neovim for my personal workflow.
No guarantee of non breaking changes.

## Requirements

- [Neovim 0.12.4](https://github.com/neovim/neovim/releases/tag/v0.12.4) or newer
- [Git](https://git-scm.com/)
- [fd](https://github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [LazyGit](https://github.com/jesseduffield/lazygit)

## Optional

- Clipboard manager (MacOS: pbcopy, Linux: xsel, wl-clipboard, etc)
- Ruby LSP installed at `~/.asdf/shims/ruby-lsp`

## Installation


```sh
git clone git@github.com:iusztin/nvim-basic-ide.git ~/.config/nvim
```

Start Neovim normally. On first start, Neovim's experimental `vim.pack`
restores every plugin at the revision recorded in `nvim-pack-lock.json`.

## Plugin updates

Run `:lua vim.pack.update()` to fetch updates. Review the confirmation buffer,
write it with `:write` to accept the revisions (or quit it to cancel), then run
`:restart`. Commit the resulting `nvim-pack-lock.json` change after testing.

To roll back an update, restore the previous lockfile with Git, restart Neovim,
then run:

```vim
:lua vim.pack.update(nil, { offline = true, target = "lockfile" })
```

Review and write the confirmation buffer, then restart once more. The former
`~/.local/share/nvim/lazy` directory is intentionally left in place during the
migration and can be removed manually after the new configuration is accepted.
