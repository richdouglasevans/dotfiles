set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'chriskempson/base16-vim'
" Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-fugitive'
set completeopt-=preview

call vundle#end()            " required

filetype plugin indent on    " required
autocmd Filetype gitcommit setlocal spell textwidth=72

set number
set hlsearch
set hidden
let loaded_matchparen = 1
set wildignore=*.swp,*.bak,*.pyc,*.class
set noerrorbells         " don't beep
let mapleader=","
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap ; :
cmap w!! w !sudo tee % >/dev/null

syntax enable
set background=dark
colorscheme base16-default
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

imap <C-c> <CR><Esc>O
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%

