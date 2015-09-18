" VimRC used by <shepjeng@gmail.com>

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" Set line number
set nu

"Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,big5,latin1,gb2312,enc-cn
set termencoding=utf-8
set ambiwidth=double

"Set shell to be bash
set shell=bash

"Sets how many lines of history VIM bar to remember
set history=20

"See partial commands as you type
set showcmd

"Show current mode
set showmode

"Display filename in terminal window
set titlestring=%f\ %h%r%m

"Set list mode
set nolist
set listchars=tab:>-,trail:-,eol:$,nbsp:%,extends:>,precedes:<

"Favorite filetypes
set fileformat=unix
set fileformats=unix,mac,dos

"Set 2 lines to the curors - when moving vertical..
set scrolloff=2

"Such as <TAB> in shell
set wildchar=<TAB>

"Turn on wild menu - enable command-line completion operates
set wildmenu

"have command-line completion <Tab> (for filenames, help topics, option names)
"first list the available options and complete the longest common part, then
"have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

"Always show current position
set ruler

"The commandbar is 1 high
set cmdheight=1

"Do not redraw, when running macros.. lazyredraw
set lazyredraw

"Change buffer - without saving
set hidden

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set visualbell
set t_vb=

"Show matching bracets
set showmatch

"How many tenths of a second to blink
set matchtime=2

"Highlight search things
set hlsearch

"Always show the statusline
set laststatus=2

"Format the statusline
set statusline=%<%f%m%r%h\ ::%{getcwd()}%=0x%-4B%6.(%c%)%13.(%l/%L%)%5.(%p%%%)

"No viminfo
set viminfo=""

"Turn nobackup, nowritebackup, noswapfile
set nobackup
set nowritebackup
set noswapfile

"Set to auto read when a file is changed from the outside
set autoread

"set linebreak
"set textwidth=80


"Tab
set expandtab
set nosmarttab
set tabstop=4      " real tab characters are 8 spaces wide
set softtabstop=4   " <BS> over an autoindent deletes both spaces
set shiftwidth=4    " an indent level is 4 spaces wide

"Prefer the new window on the right instead of the left
set splitright

"Some stuff to get the mouse going in term
set mouse=
"Most terminals send modern xterm mouse reporting but this isn't always detected in GNU Screen.
set ttymouse=xterm2

"Markdown
augroup mkd
    autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

syntax enable
set t_Co=16

" Tab hotkeys
nmap <LEADER>tn :tabnew<CR>
nmap <LEADER>tk :tabclose<CR>
nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>

" Nerd Tree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" acp && neocomplcache are conflict
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1

" TagBar
nnoremap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_width = 40
let g:tagbar_autofocus = 1
let g:tagbar_expand = 1

if has("gui_running")
    set t_Co=256
    set guifont=Monaco\ 10
    set columns=120
    set lines=40
    set mouse=a
    colorscheme twilight
endif

if has("gui_macvim")
    set guifont=Menlo:h14
    set transparency=5
endif

set secure


