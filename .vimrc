"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle for Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:mapleader = "\<Space>"

filetype off                  " required
syntax on                     " so syntax files load
syntax enable   
set nocompatible              " be iMproved, required
set hidden
set nowrap
set cmdheight=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()		" required, all plugins must appear after this line.

Plugin 'VundleVim/Vundle.vim'  " Vundle
Plugin 'vimwiki/vimwiki'                      " Vim wiki
Plugin 'ryanoasis/vim-devicons'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-python/python-syntax'
Plugin 'jreybert/vimagit'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'ap/vim-css-color'                           " Color previews for CSS
Plugin 'tpope/vim-surround'                         " Change surrounding marks
Plugin 'chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'martinda/jenkinsfile-vim-syntax'        " jenkinsfiles
Plugin 'mattn/emmet-vim'                        " emmet!
Plugin 'scrooloose/nerdtree'
Plugin 'gruvbox-community/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'neoclide/coc.nvim'

call vundle#end()		" required, all plugins must appear before this line.

filetype plugin indent on    " required

" set molokai color scheme to original monokai colors
let g:molokai_original = 1

"
" some Airline Settings
"
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Remap Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Escaping is the worst
inoremap kj <Esc>
inoremap ii <Esc>
nnoremap <C-c> <Esc>

" Using TAB in general mode to move buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Source Vim config file.
map <Leader>sv :source $MYVIMRC<CR>


" .............................................................................
" scrooloose/nerdtree
" .............................................................................
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

" Open nerd tree at the current file or close nerd tree if pressed again.
nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat', 
      \ }

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set number relativenumber
let g:rehash256 = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set smartindent
set autoindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VimWiki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Splits and Tabbed Files
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

set path+=**			" Searches current directory recursively.
set wildmenu			" Display all matches when tab complete.
set incsearch
set nobackup
set noswapfile

let g:minimap_highlight='Visual'

let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Removes pipes | that act as seperators on splits
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fillchars+=vert:\ 


