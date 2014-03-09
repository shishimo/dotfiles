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
Bundle 'tpope/vim-surround'
Bundle 'Xdebug'
Bundle 'YankRing.vim'
Bundle 'othree/html5.vim'

filetype plugin indent on

" -------------------------------------------------------------------------
" インデント・タブ
" -------------------------------------------------------------------------
set autoindent    " 前の行のインデントを引き継ぐ
set expandtab     " タブをスペースに
set shiftwidth=4  " 自動的に追加されるタブの文字数
set softtabstop=0 " <Tab>キーを押した時に挿入される幅。0なのでtabstopの値が有効
set tabstop=4     " ファイル内に既にある<Tab>の幅

" -------------------------------------------------------------------------
" エンコーディング
" -------------------------------------------------------------------------
set encoding=utf-8      " vim内部エンコーディング
set fileencoding=utf-8  " ファイルの保存エンコーディング
set fileencodings=utf-8 " ファイルを開く際のエンコーディング判別順

" -------------------------------------------------------------------------
" カラースキーマ
" -------------------------------------------------------------------------
syntax on
colorscheme darkblue

" -------------------------------------------------------------------------
" バックスペース
" eol    行頭で<Backspace>押下時に前行にマージするように設定
" indent オートインデント部分も削除可能に設定
" start  既存記載文字も自由に削除可能に設定
" -------------------------------------------------------------------------
set backspace=eol,indent,start

" -------------------------------------------------------------------------
" 検索
" -------------------------------------------------------------------------
set ignorecase " 検索キーワードの大文字小文字を区別しない
set incsearch  " インクリメンタルサーチ有効
set hlsearch   " 検索結果をハイライト
" 検索キーワードに大文字が含まれる場合ignorecaseをoffにする
" pattern ignorecase smartcase matches
" foo     off        -         foo
" foo     on         -         foo Foo FOO
" Foo     on         off       foo Foo FOO
" Foo     on         on        Foo
set smartcase
set wrapscan   " ファイル末尾から先頭に検索キーワードの移動を有効
" ハイライト解除
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" -------------------------------------------------------------------------
" ステータス行
" -------------------------------------------------------------------------
set laststatus=2 " ステータス行を表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set showcmd " 入力中のコマンド表示

" -------------------------------------------------------------------------
" 括弧 
" -------------------------------------------------------------------------
set showmatch
set matchpairs+=<:>
set matchtime=1


" -------------------------------------------------------------------------
" 履歴・バックアップ
" -------------------------------------------------------------------------
set history=50

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
