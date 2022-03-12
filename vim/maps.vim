" All maps

map cc <Plug>NERDCommenterInvert

map <C-s> :w<CR>

" Normal

nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

nmap bn :bn<CR>
nmap bp :bp<CR>
nmap bd :bd<CR>
nmap bt :tabe<CR>

nmap <A-j> :m .+1<CR>==
nmap <A-k> :m .-2<CR>==

nmap <Tab> :NERDTreeToggle<CR>

nmap <C-t> :ToggleTerm direction=float<CR>

nmap q :q<CR>

" Insertion

inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

inoremap <C-t> <Esc>:ToggleTerm direction=float<CR>

:imap jj <Esc>

" Visual

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Terminal

tnoremap <C-t> <C-\><C-n> :ToggleTerm direction=float<CR>
:tnoremap jj <C-\><C-n> 
