syntax on
filetype plugin indent on
execute pathogen#infect()
syntax on
filetype plugin indent on
"filetype indent on
" converts tabs to space characters
set expandtab
" sets the number of space characters used when the tab key is pressed
set tabstop=4
" sets the number of space characters inserted for indention
set shiftwidth=4
" sets the number of space characters when in insert mode
set softtabstop=4

set pastetoggle=<F10>

" set up syntax highlighting for my e-mail
au BufRead,BufNewFile .followup,.article,.letter,/tmp/pico*,nn.*,snd.*,/tmp/mutt* :set ft=mail 
