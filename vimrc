" Plugin: pathogen.vim: manage your runtimepath
call pathogen#infect()

" better default font size on Macvim
set guifont=Menlo:h13

filetype plugin indent on

function! InsertCommand(command)
    redir => output
    silent execute a:command
    redir END
    call feedkeys('i'.substitute(output, '^[\n]*\(.\{-}\)[\n]*$', '\1', 'gm'))
endfunction

" paste ruby commant output on cursor
" command -nargs=+ Iruby call InsertCommand("ruby " . <q-args>)

syntax enable

if has('gui_running')
 set background=dark
 " set clipboard=unnamed
 colorscheme solarized
else
  colorscheme desert
endif

" Vim should consider cakePHP .ctp files as html so they get properly
" indented
" au BufNewFile,BufRead *.ctp set filetype=html

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

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

" trying to copy and paste
" vmap <C-c> "+yi
" vmap <C-x> "+c
" vmap <C-v> "c<ESC>"+p
" imap <C-v> <C-r><C-o>+

set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

" Use cursor keys to navigate buffers.
map <Right> :bnext<CR>
map <Left> :bprev<CR>
imap <Right> <ESC>:bnext<CR>
imap <Left> <ESC>:bprev<CR>
map <Del> :bd<CR>

" Control+l to put =>
imap <c-l> =><space>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" set path+=config/**,app/**,lib/**,spec/**,test/*

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
" let g:ale_javascript_prettier_options = '--single-quote --no-semi'
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1
