# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.rvm/bin:$PATH
export EDITORP=nvim #エディタをvimに設定
export LANG=ja_JP.UTF-8 #文字コードをUTF-8に設定

# rbenv
eval "$(rbenv init -)"

##
# Completion
##
autoload -Uz compinit
compinit

##
# Color
##
autoload -Uz colors
colors

# プロンプト
export PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})[%n@%~] %{${reset_color}%}"
export PROMPT2="%(?.%{${fg[green]}%}.%{${fg[red]}%})[%n] %{${reset_color}%}"

# ls
export LSCOLORS=gxfxcxdxbxegedabagacag

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LSCOLORS}

##
# History
##

# 履歴ファイルの設定
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#余分な空白は詰めて記録
setopt HIST_IGNORE_SPACE

#ヒストリファイルを上書きするのではなく、追加するようにする
setopt APPEND_HISTORY

#履歴がいっぱいの時は最も古いものを先ず削除
setopt HIST_EXPIRE_DUPS_FIRST

#履歴検索中、重複を飛ばす
setopt HIST_FIND_NO_DUPS

#前のコマンドと同じならヒストリに入れない
setopt HIST_IGNORE_DUPS

#history コマンドをヒストリに入れない
setopt HIST_NO_STORE

#履歴から冗長な空白を除く
setopt HIST_REDUCE_BLANKS

# 他のタブと履歴を共有
setopt SHARE_HISTORY

#ヒストリに実行時間も保存
setopt EXTENDED_HISTORY

##
# Misc
##

# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

# 補完候補表示時にビープ音を鳴らさない
setopt nolistbeep

# ビープ音を鳴らさない
setopt no_beep

##
# Alias
##

alias ls='ls -aG'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias vi='nvim'
alias mkdir='mkdir -p'

##
# Key Alias
##
# Ctrl+rでヒストリーのインクリメンタルサーチ、Ctrl+sで逆順
bindkey '^r' history-incremental-pattern-search-backward
bindkey '^s' history-incremental-pattern-search-forward
