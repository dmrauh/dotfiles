source ~/.config/fish/private.config.fish

set PATH ~/bin $PATH
set -x PAGER less -R
set fish_greeting ""

alias d="cd ~/Downloads"
alias m="cd ~/Music"
alias c="xclip -sel clip"
alias o="rifle"
alias f="fzf"
alias fo="o (f)"
alias mf="sudo mount /dev/sdb1 /mnt/flash"
alias uf="sudo umount /mnt/flash"
alias ls="exa --oneline"
alias ll="exa --long --all"
alias wt="curl wttr.in"
alias justika="justika -a"
alias clip="xclip -selection clipboard"
alias agenda="khal list -a private -a work -a termine 2> /dev/null"
alias mb="sudo cryptsetup luksOpen \
/dev/disk/by-uuid/78f356c2-534f-4183-aca8-fa7bbc0886a8 backup; \
sudo mount /dev/mapper/backup /mnt/backup"
alias ub="sudo umount /mnt/backup; sudo cryptsetup luksClose backup"

eval (dircolors ~/.dir_colors | head -n 1 | sed 's/^LS_COLORS=/set -x LS_COLORS /;s/;$//')

if test "$TERM" = "xterm-kitty"
    fish_vi_key_bindings
end

