" Basic
set nocompatible     "vi互換でなくVimデフォルト設定にする
set number             "行番号を表示
set hls                "検索した文字をハイライトする
set vb t_vb=           "ビープ音を消す

" インデント
set autoindent         "改行時に自動でインデントする
set expandtab          "タブ入力を空白に変換
set shiftwidth=2       "自動インデント時に入力する空白の数
set tabstop=2          "タブを何文字の空白に変換するか

" 画面分割
set splitright         "画面を縦分割する際に右に開く

" 色
syntax on
colorscheme desert
