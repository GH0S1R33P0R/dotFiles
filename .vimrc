"""""" .vimrc file """""
" Use vim settings
" PUT THIS FIRST
set nocompatible

" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
   execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Start Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-plug'
Plug 'sheerun/vim-polyglot'
call plug#end()
" End Plugins

" enable syntax highlighting
syntax enable

" enable folding (wrapping text)
set foldmethod=syntax

" I like dark themes so...
set background=dark

" Found this colorscheme and I liked it.
let g:solarized_termtrans=1
let g:solarized_visibility="high"
colorscheme solarized

" hide buffers without having to write on undo changes first
set hidden
set wrap                        " do wrap lines
set backspace=indent,eol,start
                                " allow backspacing over everything in insert mode
" indenting options
set shiftwidth=4                " number of spaces to use for autoindenting
set tabstop=4                   " a tab is four spaces
set autoindent                  " always set autoindenting on
set cindent                     " indents for C like files
set copyindent                  " copy the previous indentation on autoindent
set smarttab                    " insert tabs on the start of a line according to
                                "    shiftwidth, not tabstop
set expandtab                   " Expand tabs into spaces
set shiftround                  " use multiple of shiftwidth when indenting with '<'or'>'

set number                      " always show line numbers
set relativenumber              " relative line numbers on the left
set showmatch                   " set show matching parenthesis
set matchtime=5                 " Show matching brackets for 0.5 seconds
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set cursorline                  " hightlights current cursor"
set colorcolumn=80              " vertical line at the 80 char position
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
" set virtualedit=all             " allow the cursor to go in to "invalid" places

set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type

set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator
                                "    supports it (xterm does and urxvt)
set fileformats="unix,dos,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines

set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                       " change the terminal's title
set ls=2                         "Show filename at bottom
set wildmenu                    " better menu autocompletion

" Showing trailing and non-printable characters
set showbreak=↪\ 
set listchars=tab:│·,trail:·,eol:↲,nbsp:␣,extends:›,precedes:‹
set list
" TODO Add colors for guifg
hi SpecialKey ctermfg=0
hi NonText ctermfg=0



" for gods sake we have git now
set nobackup
set noswapfile
