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

    git clone https://github.com/Harrian/vimrc.git ~/vimrc
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp ~/vimrc/publicplugins.vim ~/.vim/.
    cp ~/vimrc/publicrc.vim ~/.vim/.
    cp ~/vimrc/samplevimrc.vim ~/.vimrc
    vim +PluginInstall +qall
    ~/.vim/bundle/fzf/install --no-update-rc --no-key-bindings --no-completion

## Troubleshooting

Be sure that the `~/.vim/` directory is in your vim rtp, you can check by running `set rtp?`
