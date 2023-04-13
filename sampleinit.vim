set rtp^=~/.vim rtp+=~/.vim/after
let &packpath = &rtp
source ~/.vimrc

call plug#begin()

Plug 'neovim/nvim-lspconfig'

call plug#end()

lua << EOF
require('lspconfig').clangd.setup{
  cmd = {"/path/to/clangd"}
}
EOF
