" General settings
set nocompatible               " Use Vim defaults, not vi
set encoding=utf-8             " Support Unicode icons and emoji
set showcmd                    " Show commands as you type
set autoread                   " Reload files changed outside Vim

" Tabs and indentation
set tabstop=2                  " Number of spaces that a <Tab> counts for
set shiftwidth=2               " Number of spaces to use for (auto)indent
set softtabstop=2              " Treat <Tab> as 2 spaces
set expandtab                  " Use spaces instead of tabs
set autoindent                 " Copy indent from current line when starting new one
set smartindent                " Smart indentation for code-like structure

" Search
set ignorecase                 " Case-insensitive search
set smartcase                  " ... unless capital letters used
set incsearch                  " Show matches as you type
set hlsearch                   " Highlight search matches

" Filetype & syntax
syntax on                      " Enable syntax highlighting
filetype on
filetype plugin indent on      " Enable file-type specific indentation
autocmd BufNewFile,BufRead *.sh set filetype=sh

" Visual tweaks
set background=dark            " For terminals with dark backgrounds
set wrap                       " Wrap long lines
set linebreak                  " Don’t split words when wrapping
set scrolloff=3                " Keep 3 lines visible above/below cursor

" Key mappings
nnoremap <leader>x :x<CR>      " Save & quit
nnoremap <C-l> :nohlsearch<CR> " Clear search highlight with Ctrl+L

" Text editing helpers
set clipboard=unnamedplus      " Use system clipboard (if supported)
set backspace=indent,eol,start " Allow backspace everywhere
set wildmenu                   " Tab-completion in command mode
set history=1000               " Remember command history

" jk to normal mode
inoremap jk <Esc>

" Diabling error sound
set noerrorbells visualbell t_vb=

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

call plug#end()

" VimWiki configuration
let g:vimwiki_list = [{'path': '~/md/', 'syntax': 'markdown', 'ext': '.md'}]
