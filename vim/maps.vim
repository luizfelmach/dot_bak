" All maps

" Leader key
let mapleader = ' '

" Maps leader
map <silent> <leader><cr> :noh<cr>

" Key F<1-12>
map <f2> :NERDTreeToggle<CR>
map <f3> :ToggleTerm direction=float<CR>
tnoremap <f3> <C-\><C-n> :ToggleTerm direction=float<CR>
:tnoremap jj <C-\><C-n> 
inoremap <f3> <Esc>:ToggleTerm direction=float<CR>
map <f4> :Goyo <CR>
map <f5> :QuickRun <CR>
map <f6> :call LanguageClient#textDocument_formatting() <CR>
map <f12> :so ~/.config/nvim/init.vim <CR>
map <f8> :echo "Livre!" <CR>
map <f9> :echo "Livre!" <CR>

" Move between buffers
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" Next/ Previous/ Delete/ Create (Buffer)
nmap bn :bn<CR>
nmap bp :bp<CR>
nmap bd :bd<CR>
nmap bt :tabe<CR>


" Line Down/Up 
nmap <A-j> :m .+1<CR>==
nmap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Quit/Save file
nmap <leader>q :q<CR>
nmap <leader>w :w!<cr>

" Quit insertion mode 
:imap jj <Esc>

" Language Client
nmap <silent> K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F7> <Plug>(lcn-rename)

let g:LanguageClient_useVirtualText = "No"
let g:LanguageClient_changeThrottle = 0.4
