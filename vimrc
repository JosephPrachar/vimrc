set t_Co=256
set background=dark
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
colorscheme wombat
match ExtraWhitespace /\s\+\n/
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
syntax enable
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set hlsearch
set incsearch
set guifont=Consolas:h12:cDEFAULT
set ignorecase
set smartcase
set viminfo='100,<1000,s100,h

" This makes vim remember the line you were on when a file is reopened.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"execute pathogen#infect()

" These next 2 lines force NERDTree to open when calling vim on a folder
"let g:NERDTreeHijackNetrw = 1
"au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

" display solid black past 80 col
"let &colorcolumn=join(range(81,999),",")
"highlight ColorColumn ctermbg=235

imap jk <Esc>

call plug#begin()

Plug 'valloric/youcompleteme'
Plug 'yuttie/comfortable-motion.vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

call plug#end()

let g:easytags_async = 1
set spell!

