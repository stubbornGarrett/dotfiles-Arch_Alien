" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode

"call plug#begin()
"Plug 'xuhdev/vim-latex-live-preview'
"call plug#end()

set nocompatible
syntax on
" filetype plugin on
filetype plugin indent on
set encoding=utf-8
set relativenumber number

set wildmode=longest,list,full

set splitbelow splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <F6> :setlocal spell! spelllang=en_us,en_gb,en,de_de<CR>
map <F5> :LLPStartPreview<CR>

vnoremap <C-c> "*y :let @+=@*<CR> 
map <C-v> "+P

set hidden
set ignorecase
set smartcase
set hlsearch
set showcmd
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
 
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4
 
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-H> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-H> :nohl<CR><C-H>
 
"------------------------------------------------------------



" AUTO UPDATE

autocmd BufWritePost ~/.Xresources,~/.xres/* !xrdb ~/.Xresources




