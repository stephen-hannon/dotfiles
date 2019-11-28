syntax on
set background=dark
"colorscheme solarized
"colorscheme koehler
colorscheme slate

set number
noremap <silent> <C-L> :set relativenumber!<cr>

filetype indent on
set shiftwidth=4
set tabstop=4

set scrolloff=3
set showmode
set showcmd

set ignorecase
set smartcase
set bs=indent,eol,start

" Ctrl-J for navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

" Remap Y to match behavior of C and D
nnoremap Y y$

nnoremap <silent> <leader><cr> :noh<cr>

" alias :tabnew to :TN
command -nargs=? -complete=file TN tabnew <args>

" hide cursorline when in insert mode
set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

autocmd BufNewFile answers.json set paste

set incsearch
set hlsearch
set ignorecase
set smartcase

let g:netrw_liststyle = 3 " make netrw directory listing more like a tree

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
