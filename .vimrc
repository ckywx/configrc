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
syntax enable
set t_Co=16
set secure
execute pathogen#infect()
syntax on
filetype plugin indent on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set smartindent 
set completeopt=preview,menu 
:inoremap ( ()<ESC>i 
:inoremap  ) <c-r>=ClosePair(')')<CR> 
:inoremap { {<CR>}<ESC>O 
:inoremap  } <c-r>=ClosePair('}')<CR> 
:inoremap [ []<ESC>i 
:inoremap  ] <c-r>=ClosePair(']')<CR> 
:inoremap " ""<ESC>i 
":inoremap " <c-r>=ClosePair('"')<CR> 
:inoremap ' ''<ESC>i 
":inoremap ' <c-r>=ClosePair('\'')<CR> 
function! ClosePair(char) 
    if getline('.')[col('.') - 1] == a:char 
        return "\<Right>" 
    else 
        return a:char 
    endif 
endfunction 
set completeopt=longest,menu 

