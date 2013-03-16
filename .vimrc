set nocompatible " must be first!


colorscheme darkblue
nnoremap j gj
nnoremap k gk
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
" ハードタブをめだたせる
"
" -------------------------------------------------------------------------
"   set listchars=tab:>-
"   set list

" -------------------------------------------------------------------------
" 入力補完
"
" -------------------------------------------------------------------------
       inoremap ,date <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR>
       iabbrev ,# # =========================================================================
       iabbrev ## # -------------------------------------------------------------------------

" -------------------------------------------------------------------------
" perl test
"
" -------------------------------------------------------------------------
       augroup filetypedetect
       autocmd! BufNewFile,BufRead *.t setf perl
       augroup END

" -------------------------------------------------------------------------
" minibufexpl.vim の設定
"
" -------------------------------------------------------------------------
   let g:miniBufExplMapWindowNavVim = 1
   let g:miniBufExplMapWindowNavArrows = 1
   let g:miniBufExplMapCTabSwitchBuffs = 1

" -------------------------------------------------------------------------
" 自動cd
" ref. http://nanasi.jp/articles/vim/cd_vim.html
"
" -------------------------------------------------------------------------
   au BufEnter * execute ":lcd " . expand("%:p:h")

" -------------------------------------------------------------------------
" ChangeLog
"
" -------------------------------------------------------------------------
   let g:changelog_username = 'tokuhirom <tokuhirom@gmail.com>'

" -------------------------------------------------------------------------
" matchit
" ref. http://nanasi.jp/articles/vim/matchit_vim.html
"
" -------------------------------------------------------------------------
   source $VIMRUNTIME/macros/matchit.vim
