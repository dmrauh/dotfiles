call plug#begin(stdpath('data') . '/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iCyMind/NeoSolarized'
Plug 'tridactyl/vim-tridactyl'

call plug#end()

colorscheme NeoSolarized

set termguicolors
set background=dark

set colorcolumn=80
set number relativenumber

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set list
set listchars=tab:!·,trail:·,precedes:«,extends:»,eol:¬,space:·

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

highlight Comment cterm=italic gui=italic

" Highlight trailing spaces
" https://superuser.com/questions/921920/display-trailing-spaces-in-vim
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
