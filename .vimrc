"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle for Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on                     " so syntax files load

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()		" required, all plugins must appear after this line.

Plugin 'VundleVim/Vundle.vim'  " Vundle
Plugin 'itchyny/lightline.vim'                " Lightline statusbar
Plugin 'vifm/vifm.vim'
Plugin 'vimwiki/vimwiki'                      " Vim wiki
Plugin 'scrooloose/nerdtree'			" added nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
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


call vundle#end()		" required, all plugins must appear before this line.

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" set molokai color scheme to original monokai colors
let g:molokai_original = 1

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Remap Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap ESC to ii
:imap ii <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Powerline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat', 
      \ }

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

syntax enable   
set number relativenumber
let g:rehash256 = 1

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2	
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=none
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

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


