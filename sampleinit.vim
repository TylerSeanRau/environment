set rtp^=~/.vim rtp+=~/.vim/after
let &packpath = &rtp
source ~/.vimrc
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
set mouse=

call plug#begin()

Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

lua << EOF
local lsp_hookups = require('lsp_hookups')

local lsp_windowing = require('lsp_windowing')

vim.lsp.handlers['textDocument/definition'] = lsp_windowing.location_handler
vim.lsp.handlers['textDocument/declaration'] = lsp_windowing.location_handler
vim.lsp.handlers['textDocument/typeDefinition'] = lsp_windowing.location_handler
require("lsp_lines").setup()
vim.diagnostic.config({
  virtual_text = false,
})

EOF
