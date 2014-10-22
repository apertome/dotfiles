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

" recognize .xml.example files as xml
au BufRead,BufNewFile *.xml.example set filetype=xml

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent>∆ :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent>˚ :set paste<CR>m`O<Esc>``:set nopaste<CR>
"nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" find the MacOS Alt key
" Alt-j: ∆
" Alt-k: ˚
