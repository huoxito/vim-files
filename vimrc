" Plugin: pathogen.vim: manage your runtimepath
call pathogen#infect()

filetype plugin indent on

syntax enable

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme desert
endif

" Vim should consider cakePHP .ctp files as html so they get properly
" indented
au BufNewFile,BufRead *.ctp set filetype=html

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set cmdheight=2
set pastetoggle=<F2>

set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cpoptions+=$

" Show line number, cursor position.
set ruler

" To save, press ctrl-s.:w
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

noremap <A-j> gT
noremap <A-k> gt

