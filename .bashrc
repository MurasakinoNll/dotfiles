#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias gotomc='cd ~/.minecraft/versions/'
alias powerpill='pacman -Sy && powerpill && paru -Su'
alias v='nvim'
alias cd='z'
alias sv='sudo -E -s nvim'
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
alias half='pactl set-volume @DEFAULT_AUDIO_SINK@ 50%'
alias up='pactl set-volume @DEFAULT_AUDIO_SINK@ 10%+'
alias down='pactl set-volume @DEFAULT_AUDIO_SINK@ 10%-'
export LIB=/usr/share/pkgconfig
export GTK=/usr/lib/pkgconfig/
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
eval "$(zoxide init bash)"
# bun
