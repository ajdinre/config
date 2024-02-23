filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab  
set number
syntax on
set background=dark
set t_Co=256
set hlsearch
set incsearch
set showmatch

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
hi CursorLineNr term=bold cterm=None ctermfg=Yellow gui=bold guifg=Yellow
