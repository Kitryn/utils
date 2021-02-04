""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'Raimondi/delimitMate'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
" set showcmd  " commenting this out and installing sensible cos idk what this does
" set hlsearch  " highlight search? there's smth about this in sensible

" Line numbers
set number
set relativenumber

" Toggle relative numbers in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Add a bit of extra margin to the left
" set foldcolumn=1


" Height of the command bar
" set cmdheight=1


"""""""""
" Colors and Fonts
"""""""""

"try
"    colorscheme desert
"catch
"endtry
let g:seoul256_background=233
colo seoul256
set background=dark


""""""""
" Text tab indent stuff
""""""""

" Use spaces instead of tabs
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

" idk what this is
set smarttab


"""
" Status line
"""
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""
" MISC
"""

filetype plugin indent on
set scrolloff=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

