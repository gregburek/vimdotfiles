filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"" call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set nu                          " line numbers
let mapleader = ","
"" set rnu                      " relative line numbers
set hidden
set history=1000
set wildmenu
set wildmode=list:longest
set title
set scrolloff=3
set ruler
set backspace=indent,eol,start
nmap <silent> <leader>n :silent :nohlsearch<CR>
set shortmess=atI
set visualbell
set ruler
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Python specific 
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
      \ [%l/%L\ (%p%%)
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
autocmd BufRead *.py nmap <F5> :!python %<CR>

"" Ruby specific
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

"" Omnicomplete
filetype plugin on
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby let g:rubycomplete_classes_in_global=1
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo

"" shortcuts 
nmap <leader>e :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFind<cr>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
noremap <silent> <Leader>y :TagbarToggle<cr>
