" This all of the vim configuration settings that
" are not project specific

colorscheme desert

nnoremap <Left> :echo "Don't be stupid, use h"<CR>
vnoremap <Left> :<C-u>echo "Don't be stupid, use h"<CR>
inoremap <Left> <C-o>:echo "Don't be stupid, use h"<CR>

nnoremap <Right> :echo "Don't be stupid, use l"<CR>
vnoremap <Right> :<C-u>echo "Don't be stupid, use l"<CR>
inoremap <Right> <C-o>:echo "Don't be stupid, use l"<CR>

nnoremap <Up> :echo "Don't be stupid, use k"<CR>
vnoremap <Up> :<C-u>echo "Don't be stupid, use k"<CR>
inoremap <Up> <C-o>:echo "Don't be stupid, use k"<CR>

nnoremap <Down> :echo "Don't be stupid, use j"<CR>
vnoremap <Down> :<C-u>echo "Don't be stupid, use j"<CR>
inoremap <Down> <C-o>:echo "Don't be stupid, use j"<CR>

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

"split to the right instead of left
set splitright

"bashlike tab complete
set wildmode=longest,list

" use shift w instead of control w
nnoremap <S-w> <C-w>

nnoremap t :Files<CR>
nnoremap r :Ag<CR>

set rtp+=~/.vim/bundle/fzf/bin

autocmd VimEnter * if line('$') == 1 && getline(1) == '' | if !empty(glob('~/.master.todo.swp')) | view ~/master.todo | else | edit ~/master.todo | endif | call VimTodoListsInit() | endif
