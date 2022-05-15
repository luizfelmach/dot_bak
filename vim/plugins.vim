" Plugins

call plug#begin()
    " Layout
        " Themes
            Plug 'morhetz/gruvbox'

        " Status bar
            Plug 'vim-airline/vim-airline'
            Plug 'vim-airline/vim-airline-themes'
            Plug 'ryanoasis/vim-devicons'

        " Initial start
            Plug 'mhinz/vim-startify'

    " Languages
        " Language server protocol
            Plug 'prabirshrestha/vim-lsp'
            Plug 'prabirshrestha/asyncomplete.vim'
            Plug 'prabirshrestha/asyncomplete-lsp.vim'

        " Syntax
            Plug 'sheerun/vim-polyglot'
            Plug 'honza/vim-snippets'

        " Tools
            Plug 'tomtom/tcomment_vim'
            Plug 'tpope/vim-surround'
            Plug 'mg979/vim-visual-multi', {'branch': 'master'}
            Plug 'thinca/vim-quickrun'
            Plug 'ntpeters/vim-better-whitespace'

        " Layout
            Plug 'Yggdroot/indentLine'
            Plug 'jiangmiao/auto-pairs'
            Plug 'frazrepo/vim-rainbow'

    " Tools
        " Explorer
            Plug 'preservim/nerdtree'
            Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
            Plug 'Xuyuanp/nerdtree-git-plugin'

        " Find files
            Plug 'ctrlpvim/ctrlp.vim'

        " Integrated terminal
            Plug 'voldikss/vim-floaterm'

        " Git & Github
            Plug 'airblade/vim-gitgutter'
            Plug 'tpope/vim-fugitive'

        " Others
            Plug 'junegunn/goyo.vim'
            Plug 'voldikss/vim-translator'

call plug#end()

