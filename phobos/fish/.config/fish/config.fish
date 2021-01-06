set PATH ~/bin ~/.local/bin $PATH
set PATH ~/.emacs.d/bin $PATH
set PATH ~/.npm-global/bin $PATH

set EDITOR "/usr/bin/nvim"
set BROWSER "/usr/bin/firefox"
set RANGER_LOAD_DEFAULT_RC "FALSE"
set fish_greeting ""
set -x SSH_AUTH_SOCK "/run/user/1000/keyring/ssh"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

alias d="cd ~/Downloads"
alias m="cd ~/Music"
alias o="rifle"
alias f="fzf"
alias l="exa"
alias fo="o (f)"
alias bat="bat --style=plain --pager=never"

eval (dircolors -c ~/.config/fish/dircolors-solarized/dircolors.256dark)

fish_vi_key_bindings
