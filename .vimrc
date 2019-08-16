"nwjbrandon's .vimrc 2019-05-15

"Plugins Installation
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
call vundle#end()          
filetype plugin indent on 

"Indentation Settings
set autoindent
set smartindent
set shiftwidth=4
set smarttab
set tabstop=4
set softtabstop=4
set expandtab
set cindent
inoremap # X<BS>#

"Search Settings
set hlsearch
set ignorecase
set incsearch
set smartcase

"Text Settings
set fileencodings=utf-8,cp932,ucs-bom,iso-2022-jp,euc-jp
set encoding=utf-8
syntax enable
set nowrap

"Display Settings
set ruler
set cursorline
set number
set tabpagemax=50
set mouse=a
set title
set belloff=all
set colorcolumn=100
set wildmenu

"Miscellaneous Settings
set backspace=indent,eol,start
set history=1000
set noswapfile
set nobackup
set showcmd
set laststatus=2

"NerdTree Settings
autocmd Vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Shortcut Settings
nmap <Esc><Esc> :nohlsearch<CR><Esc>
let mapleader = "-"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>v :vsp<CR>
nnoremap <Leader>s :sp<CR>
nnoremap <Leader>h :vertical resize -5<CR>
nnoremap <Leader>j :resize -5<CR>
nnoremap <Leader>k :resize +5<CR>
nnoremap <Leader>l :vertical resize +5<CR>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#whitespace#enabled = 0

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode',' ','branch'])
    let g:airline_section_b = airline#section#create(['%f'])
    let g:airline_section_c = airline#section#create(['filetype'])
    let g:airline_section_x = airline#section#create(['l:%l'])
    let g:airline_section_y = airline#section#create(['c:%c'])
    let g:airline_section_z = airline#section#create(['%{strftime("%c")}'])
endfunction
autocmd VimEnter * call AirlineInit()
