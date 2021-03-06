""""""""""""""""""""""""""""""""""""""""""""
"  Created by David Xie
"     E-mail    : david.scriptfan@gmail.com
"      Blog     : http://davidx.me/
"  CreatedTime  : 2009-02-06 14:03
"  LastModified : 2011-07-05 15:26
"  Version      : 2.0
""""""""""""""""""""""""""""""""""""""""""""

" turn off compatible
set nocompatible

" history
set history=400

" call pathogen
call pathogen#infect()

" turn on plugin and indent
filetype plugin on
filetype indent on

" auto read file when changed
set autoread

" active mouse
set mouse=a

" enable syntax support
syntax enable

" import mswin.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" auto reload .vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd BufRead,BufNewFile *.md set filetype=markdown

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fonts and colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set background=dark
    " set colorscheme
    "colorscheme ir_black
    "colorscheme solarized
    colorscheme merbivore
    if has("mac") || has("gui_macvim")
        set lazyredraw
        "set guifont=dejaVu\ Sans\ MONO:h14
        set guifont=Ubuntu\ Mono:h16
    else
        "set guifont=dejaVu\ Sans\ MONO\ 11
        set guifont=Ubuntu\ Mono\ 12
    endif
    if has("win32")
        set guifont=Consolas:h14
    endif
else
    colorscheme desert
endif

" highlight current line
set cursorline
hi cursorline guibg=#222222
hi CursorColumn guibg=#333333

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => files and backup 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn off backup and swap
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on folding
set nofen
set fdl=0
set fdm=indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => word processing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use spaces for tab
au filetype python set expandtab

" all tab are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

" don't break line
set lbr
set list
set lcs=tab:>.,eol:<,nbsp:%,trail:.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto indent
set ai

" wrap
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remove toolbar and menu
set guioptions-=m
set guioptions-=T

" turn on wild menu
set wildmode=longest,list
set wildmenu

" show ruler
set ruler

" set command line height to 1
set cmdheight=1

" show line number
set nu

" do not redraw, when running macros.. lazyredraw
set lz

" set backspace
set backspace=eol,start,indent

" backspace and cursor keys wrap to
set whichwrap+=<,>,h,l,b,s,[,]

" set magic on
set magic

" turn off bells
set noerrorbells
set novisualbell

" pair matching
set showmatch
set matchpairs=(:),{:},[:],<:>

" How many tenths of a second to blink
set mat=2

" highlight research
set hlsearch

" set scroll
set sj=1 so=3

" when split, use same height and width
set equalalways

set colorcolumn=81

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"encoding
set encoding=utf-8
"file encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"turn on command line
set laststatus=2

"function of show infomation of current file
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

"format statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
hi statusline guifg=red guibg=white

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tab Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showtabline=1

"""""""""""""""""""""""""""""""
" OS Special
"""""""""""""""""""""""""""""""
if has("mac")
    let g:tagbar_ctags_bin='/usr/local/bin/ctags'
endif

"""""""""""""""""""""""""""""""
" => snipMate
"""""""""""""""""""""""""""""""
if exists('$TMUX') " Support resizing in tmux
  set ttymouse=xterm2
endif


"""""""""""""""""""""""""""""""
" => shortcuts
"""""""""""""""""""""""""""""""
" set leader key to ','
let mapleader = ","
let g:mapleader = ","

" set shortcuts for save and quit
nmap <leader>s :w!<cr>
nmap <leader>w :wq!<cr>
nmap <leader>q :q!<cr>

" NerdTree
map <F5> :NERDTreeToggle<CR>

" TabBar
map <F6> :TagbarToggle<CR>

" QuickBuf
let qb_hotkey="<F4>"

" SnipMate
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

" CtrlP
nmap <leader>t :CtrlP<CR>

" GitGutter
nmap <leader>g :GitGutterToggle<CR>

