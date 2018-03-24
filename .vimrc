if &compatible
  set nocompatible
endif

" -------------------------------------------------------------------------
" dein.vim
" -------------------------------------------------------------------------

let s:deinDir    = ! exists('s:deinDir') ? $HOME . '/.vim/dein.vim' : s:deinDir
let &runtimepath = &runtimepath . ',' . s:deinDir . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:deinDir)
  call dein#begin(s:deinDir)

  call dein#add('othree/yajs.vim')
  call dein#add('Shougo/dein.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

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
" CTAGS
" -------------------------------------------------------------------------

" <C-]>    タグジャンプ
" <C-t>    タグ戻り
" <C-w+]>  別ウィンドウでタグジャンプ
" g, <C-]> タグジャンプ候補表示

" .tagsファイルをカレントディレクトリから$HOMEまで検索、tags設定
:set tags=.tags;$HOME

" ctagsコマンドを実行して、現在読み込んでる.tagsファイルを上書きする関数
function! s:execute_ctags() abort
  " 探すタグファイル名
  let tag_name = '.tags'
  " ディレクトリを遡り、タグファイルを探し、パス取得
  let tags_path = findfile(tag_name, '.;')
  " タグファイルパスが見つからなかった場合
  if tags_path ==# ''
    return
  endif

  " タグファイルのディレクトリパスを取得
  " `:p:h`の部分は、:h filename-modifiersで確認
  let tags_dirpath = fnamemodify(tags_path, ':p:h')
  " 見つかったタグファイルのディレクトリに移動して、ctagsをバックグラウンド実行（エラー出力破棄）
  execute 'silent !cd' tags_dirpath '&& ctags -R -f' tag_name '2> /dev/null &'
endfunction

" ファイル保存すると同時にctagsを実行
augroup ctags
  autocmd!
  autocmd BufWritePost * call s:execute_ctags()
augroup END

" -------------------------------------------------------------------------
" PHP
" -------------------------------------------------------------------------
let php_folding=1
let php_sql_query=1
let php_htmlInStrings=1

" -------------------------------------------------------------------------
" javascript
" -------------------------------------------------------------------------
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" -------------------------------------------------------------------------
" メモ
" <leader>は\(バックスラッシュ)
" -------------------------------------------------------------------------
