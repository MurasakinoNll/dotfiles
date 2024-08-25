#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias gotomc='cd ~/.minecraft/versions/'
alias mykey='echo | xclip -selection clipboard'
alias powerpill='pacman -Sy && powerpill && paru -Su'
alias v='nvim'
alias cd='z'
alias sv='sudo -E -s nvim'
alias p3='python3'
alias cr='cargo run'
alias cb='cargo build'
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export LIB=/usr/share/pkgconfig
export GTK=/usr/lib/pkgconfig/
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
export SDKMAN_DIR="$HOME/.sdkman"
[[ -d $HOME/.cargo/bin ]] && export PATH=$HOME/.cargo/bin:$PATH
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
eval "$(zoxide init bash)"
# bun
