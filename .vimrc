set nocompatible
set whichwrap+=<,>,h,l
set nu
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,big5,latin1,gb2312,enc-cn
set termencoding=utf-8
set ambiwidth=double
set shell=bash
set history=20
set showcmd
set showmode
set titlestring=%f\ %h%r%m
set nolist
set fileformat=unix
set fileformats=unix,mac,dos
set scrolloff=2
set wildmenu
set wildmode=list:longest,full
set ruler
set cmdheight=1
set lazyredraw
set hidden
set ignorecase
set smartcase
set incsearch
set magic
set noerrorbells
set visualbell
set showmatch
set matchtime=2
set hlsearch
set laststatus=2
set nobackup
set nowritebackup
set noswapfile
set autoread
set expandtab
set nosmarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set splitright
set mouse=
set ttymouse=xterm2
set backspace=2
set t_Co=16
set secure
set smartindent 
set completeopt=longest,menu
set autoindent
" C语言自动对齐
set cindent
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1
" 函数列表窗口放右
let Tlist_Use_Right_Window=1
let g:neocomplcache_enable_at_startup = 1
" 提示的时候默认不选择
let g:neocomplcache_enable_auto_select = 0 
" nt NERDTree
map nt :NERDTree <CR>
" tl TlistToggle
map tl :TlistToggle <CR>
" 自动补全括号
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
