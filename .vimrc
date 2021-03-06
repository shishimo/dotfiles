set nocompatible " must be first!

" -------------------------------------------------------------------------
" filetype
" -------------------------------------------------------------------------
filetype off
filetype plugin indent off

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
"set showmatch
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
" dein
" -------------------------------------------------------------------------
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/.dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/.dein')
  call dein#begin('~/.vim/.dein')

  call dein#add('~/.vim/.dein')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('Shougo/neco-syntax')

  " For swift
  "
  " 補完
  call dein#add('landaire/deoplete-swift')

  " Syntax check and filetype for swift
  call dein#add('kballard/vim-swift')

  " 実行
  call dein#add('thinca/vim-quickrun')

  " Lint
  if has('job') && has('channel') && has('timers')
    call dein#add('w0rp/ale')
  endif

  call dein#end()
  call dein#save_state()
endif

" Open vim and install dein
" :call dein#install()

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" -------------------------------------------------------------------------
" deoplete
" -------------------------------------------------------------------------
" deopleteの自動補完on
let g:deoplete#enable_at_startup = 1

" swiftの自動補完on
let g:deoplete#sources#swift#daemon_autostart = 1

" -------------------------------------------------------------------------
" PHP
" -------------------------------------------------------------------------
let php_folding=1
let php_sql_query=1
let php_htmlInStrings=1

" -------------------------------------------------------------------------
" quickrun
" -------------------------------------------------------------------------
" normalモードで \r で実行

" 実行結果を下のウィンドウに表示する。実行時間も表示する。
let g:quickrun_config = {'*': {'hook/time/enable': '1'}}
let g:quickrun_config['swift'] = {
\ 'command': 'xcrun',
\ 'cmdopt': 'swift',
\ 'exec': '%c %o %s',
\}

" quickrunの実行結果ウィンドウを右側に表示する
set splitright

" -------------------------------------------------------------------------
" ale
" -------------------------------------------------------------------------

" ファイルを開いたときにチェックしない
let g:ale_lint_on_error = 0

" メッセージのフォーマットをlinterが表示されるように変更
let g:ale_echo_msg_format = '[%linter%] %code: %%s'

" -------------------------------------------------------------------------
" filetype
" -------------------------------------------------------------------------
filetype plugin indent on

" -------------------------------------------------------------------------
" syntax
" -------------------------------------------------------------------------
syntax enable

" -------------------------------------------------------------------------
" メモ
" <leader>は\(バックスラッシュ)
" -------------------------------------------------------------------------
