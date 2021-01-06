call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iCyMind/NeoSolarized'

call plug#end()

colorscheme NeoSolarized

set termguicolors
set background=dark
set colorcolumn=80
set number relativenumber
set autoindent
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Switch to Normal mode by pressing 'jk'
imap jk <Esc>

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Highlight trailing spaces
" https://superuser.com/questions/921920/display-trailing-spaces-in-vim
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

