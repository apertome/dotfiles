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
"nnoremap <silent>Ô :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent> :set paste<CR>m`O<Esc>``:set nopaste<CR>
"nnoremap <silent>∆ :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent>˚ :set paste<CR>m`O<Esc>``:set nopaste<CR>
"nnoremap <silent><AS-J> :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent><AS-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nnoremap <silent>J :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent>K :set paste<CR>m`O<Esc>``:set nopaste<CR>
"unmap <A-j>
"unmap <A-k>

" map \q to 'close buffer'
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" find the MacOS Alt key
" Alt-j: ∆
" Alt-k: ˚
" Alt-shift-j: Ô
" Alt-shift-k: 
"
" Alt-shift-j (after changing iterm2 setting): J
" Alt-shift-k (after changing iterm2 setting): K
" To find it enter insert mode and hit Control-v followed by the key

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=11 guibg=11


" Highlight ExtraWhitespace
highlight ExtraWhitespace ctermbg=11 guibg=11

"match ExtraWhitespace /^\s* \s*\|\s\+$/
match ExtraWhitespace /\s\+$/
"match ExtraWhitespace /\s\+$\| \+\ze\t/
"match ExtraWhitespace /[^\t]\zs\t\+/

" Show trailing whitespace:
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

" Show trailing whitespace and spaces before a tab:
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
"autocmd BufWinEnter * match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
":match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
":match

"Remove trailing whitespace on the current line by pressing F5
nnoremap <F5> :let _s=@/<Bar>:s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
