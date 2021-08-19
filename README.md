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
