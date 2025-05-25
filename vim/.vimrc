set relativenumber number

"set dark background
set background=dark


" file type detection.
filetype on

"Enable plugins and loading plugins for detected files
filetype plugin on

"indent file for file types
filetype indent on

"Syntax highlighting.
syntax on

"Highlight cursor horizontally
set cursorline

"Highlight cursor vertically
"set cursorcolumn

"Set tab width to 4 columns.
set tabstop=4

"space characters instead of tabs.
set expandtab

"disables line wrapping
set nowrap

"highlight characters as you type
set incsearch

"ignore case during search
set ignorecase

"If you search for capital letters it will listen to case.
set smartcase

"Shows partial command you typed last
set showcmd

"shows the mode you are on the last line
set showmode

"shows matching words during a search
set showmatch

"Sets the clipboard to the system.
set clipboard=unnamed

"uses highlights during a search"
set hlsearch

"Set history of commands
set history=1000

"Auto completiion menu after pressing tab
set wildmenu

"Makes wildmenu like bash auto compeltion
set wildmode=list:longest

"ignores files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Auto launch nerd tree
au VimEnter * NERDTree | wincmd p

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'

    Plug 'preservim/nerdtree'

call plug#end()

" }}}




" MAPPINGS --------------------------------------------------------------- {{{
"Type jj to exit insert mode
inoremap jj <esc>

"Press space to type : commands
nnoremap <space> :


" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
"noremap <F6> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END




" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

"Clears status line when vimrc is reloaded.
set statusline=

"Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

"Divider from left side and right side
set statusline+=%=

"status line right side
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

"show status on second to last line
set laststatus=2


" }}}
