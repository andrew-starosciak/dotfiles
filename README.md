This environment for dotfiles are currently expecting to be on linux (typically though WSL Ubuntu for right now)

There are some gotcha's I wanted to express as a reminder for the future.

- Install neovim
- Install silversearcher-ag

Install vim plugins by downloading and install vim-plug.
(Use :PlugInstall, :PlugClean)

## coc.nvim
If this doesn't install correctly. Follow these steps to build it.

```
cd .vim/bundles/coc.nvim
npm i
npm run build
```

## Installing NEOVIM 

The latest version 5.0+ give's us the ability of using lsp-config.

1 - Uninstall old (sudo apt-get --purge remove neovim)
2 - Install from here (https://github.com/neovim/neovim/releases)
3 - Make it executable with chmod +x neovim.appimage.
4 - Place it in your $PATH: sudo mv neovim.appimage /usr/local/bin/nvim


