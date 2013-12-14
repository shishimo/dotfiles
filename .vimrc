set nocompatible " must be first!

" -------------------------------------------------------------------------
" Vundle設定
" -------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" Plugin
" インストール     :BundleInstall
" アンインストール :BundleClean
Bundle 'Xdebug'
Bundle 'YankRing.vim'

filetype plugin indent on

colorscheme darkblue
set expandtab
set shiftround
set autoindent
set backspace=indent,eol,start
set backup
set encoding=utf-8
set fileencoding=utf-8
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set ruler
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set tabstop=4
set wrapscan
syntax on
autocmd CursorHold * update
set updatetime=500
set fileencoding=japan
set fileencodings=utf-8

" -------------------------------------------------------------------------
" 移動
" -------------------------------------------------------------------------
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
nnoremap j gj          
nnoremap k gk

" -------------------------------------------------------------------------
" 入力補完
" -------------------------------------------------------------------------
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap `` ``<LEFT>
inoremap <> <><LEFT>
inoremap <leader>date <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR>

" -------------------------------------------------------------------------
" メモ
" <leader>は\(バックスラッシュ)
" -------------------------------------------------------------------------
