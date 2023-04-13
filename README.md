# vimrc
This repository is my public vim configuration. In addition to my .vimrc file, my plugin configuration files are also listed here.

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
git clone https://github.com/Harrian/vimrc.git ~/vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/vimrc/publicplugins.vim ~/.vim/.
cp ~/vimrc/publicrc.vim ~/.vim/.
cp ~/vimrc/samplevimrc.vim ~/.vimrc
vim +PluginInstall +qall
~/.vim/bundle/fzf/install --no-update-rc --no-key-bindings --no-completion
```

## Troubleshooting

Be sure that the `~/.vim/` directory is in your vim rtp, you can check by running `set rtp?`

## neovim
Some additional settings for neovim. These give detection of syntax errors while in the editor. This is useful for productivity. For this to work you'll need `clangd` installed. Additionally note, I use VimPlug to manage plugins for neovim so I can still use Vundle to manage vim packages if I can't install neovim.

## prepare:

A lot of times you'll need to install neovim from source

```sh
git clone https://github.com/neovim/neovim
git checkout A_RECENT_BRANCH
make
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
cp sampleinit.vim  ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall
```
