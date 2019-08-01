syntax on
set background=dark
"colorscheme solarized
colorscheme koehler

set number

filetype indent on
set shiftwidth=4
set tabstop=4

set scrolloff=3
set showmode
set showcmd

set ignorecase
set smartcase
set bs=indent,eol,start

set mouse=v

set cursorline

" Ctrl-J for navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set incsearch
set hlsearch
set ignorecase
set smartcase

set title

set laststatus=2
set statusline=
set statusline+=%f      "file path
set statusline+=%m      "modified flag
set statusline+=%r      "readonly flag
set statusline+=%h      "help flag
set statusline+=%=%y    "filetype
set statusline+=\ %l    "line number
set statusline+=/%L     "number of lines
set statusline+=\ :\ %c "column number
