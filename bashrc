#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias x='clear && exit'
alias zz='shutdown now'

# Battery
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias hbattery='upower -i /org/freedesktop/UPower/devices/headphones_dev_6C_14_14_7B_41_F0'

# YouTube
alias z='ytfzf --video-pref=137 --audio-pref=251'
alias s='ytfzf -a -m'
alias vd='cd && cd Video && ytfzf -d --formats'
alias sd='cd && cd Music && ytfzf -d -m'
alias pvd='cd && cd Video && yt-dlp --ignore-errors --format 251+137 --output "%(title)s.%(ext)s" --yes-playlist --playlist-start'
alias psd='cd && cd Music && yt-dlp --ignore-errors --format 251 --extract-audio --output "%(title)s.%(ext)s" --yes-playlist --playlist-start'

# Pacman
alias i='sudo pacman -S'
alias pl='pacman -Q | less'
alias rem='sudo pacman -Rs $(pacman -Qqtd)'

# Music
#alias m='cd && mpv --shuffle --loop-playlist --no-video-aspect-override Music'
alias m='cd && mpv --shuffle -loop-playlist --no-audio-display Music'
#alias ms='cd && cd Music && mpv --no-video-aspect-override --loop-playlist'
alias ms='cd && cd Music mpv --loop-playlist --no-audio-display'
alias v='cd && cd Video && mpv *.m*'

# Waydroid
alias ws='waydroid session start'
alias wd='waydroid session stop'
alias wi='waydroid app install'
alias wl='waydroid app list'
alias wr='waydroid app remove'

PS1='[\u@\h \W]\$ '
