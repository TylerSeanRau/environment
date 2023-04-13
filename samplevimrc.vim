set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

runtime publicplugins.vim

call vundle#end()
filetype plugin indent on

runtime publicrc.vim
