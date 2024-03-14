# environment
This repository is my public environment configurations.

## Files

#### publicplugins.vim
This file comprises [Vundle](https://github.com/VundleVim/Vundle.vim) style configuration file that is composed of the plugins that I use that are publicly available. This file is added to my vimrc via `runtime publicplugins.vim`.

#### publicrc.vim
This file comprises all my vim configuration settings that are not project or machine specific and can be shared. This file is added to my vimrc via `runtime publicplugins.vim`.

#### samplevimrc.vim
This file serves as the example .vimrc file, my actual .vimrc file on my personal machines are almost this exact file.

## Simple install

```sh
mkdir -p ~/.vim
git clone https://github.com/TylerSeanRau/environment.git ~/environment
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/environment/publicplugins.vim ~/.vim/.
cp ~/environment/publicrc.vim ~/.vim/.
cp ~/environment/samplevimrc.vim ~/.vimrc
vim +PluginInstall +qall
~/.vim/bundle/fzf/install --no-update-rc --no-key-bindings --no-completion
```

## Troubleshooting

Be sure that the `~/.vim/` directory is in your vim rtp, you can check by running `set rtp?`

## neovim
Some additional settings for neovim. These give detection of syntax errors while in the editor. This is useful for productivity. For this to work you'll need `clangd` installed. Additionally note, I use VimPlug to manage plugins for neovim so I can still use Vundle to manage vim packages if I can't install neovim.

## prepare:

A lot of times you'll need to install neovim from source(v0.9.5 is prefered by me right now)

```sh
git clone --depth=1 --branch A_RECENT_BRANCH https://github.com/neovim/neovim.git
make CMAKE_BUILD_TYPE=Release -j
sudo make install
```

install clangd:

```sh
git clone --depth=1 --branch A_RECENT_BRANCH https://github.com/llvm/llvm-project.git
cd llvm-project
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" -DCMAKE_BUILD_TYPE=Release -G Ninja ../llvm
ninja
```

## neovim configuration
```sh
mkdir -p ~/.config/nvim
cp ~/environment/sampleinit.vim ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/lua
cp ~/environment/lsp_hookups.lua ~/.config/nvim/lua/.
cp ~/environment/lsp_windowing.lua ~/.config/nvim/lua/.
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall
curl https://raw.githubusercontent.com/vim/colorschemes/master/legacy_colors/desert.vim -s -S --create-dirs -o ~/.config/nvim/colors/desert.vim
```
