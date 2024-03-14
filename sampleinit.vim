set rtp^=~/.vim rtp+=~/.vim/after
let &packpath = &rtp
source ~/.vimrc
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

call plug#begin()

Plug 'neovim/nvim-lspconfig', { 'tag': 'v0.1.4' }

call plug#end()

lua << EOF
local lsp_hookups = require('lsp_hookups')

local lsp_windowing = require('lsp_windowing')

vim.lsp.handlers['textDocument/definition'] = lsp_windowing.location_handler
vim.lsp.handlers['textDocument/declaration'] = lsp_windowing.location_handler
vim.lsp.handlers['textDocument/typeDefinition'] = lsp_windowing.location_handler
EOF
