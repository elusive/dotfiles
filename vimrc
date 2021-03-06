" .vimrc
" An assortment of little vim tricks collected from numerous sources.
" Most functionality comes from these authors:
"
" -------------------------------------------------------------------------
" Author: janus Vim Distribution
" Source: https://github.com/carlhuda/janus
" -------------------------------------------------------------------------
" -------------------------------------------------------------------------
" Author: Frew
" Source: http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
" -------------------------------------------------------------------------
" -------------------------------------------------------------------------
" Author: Steve Losh <steve@stevelosh.com>
" Source: http://bitbucket.org/sjl/dotfiles/src/tip/vim/
" -------------------------------------------------------------------------

" General settings
" ================

  syntax on                 " syntax highlighting
  filetype plugin indent on " activates indenting for files
  set autoindent            " auto indenting
  set number                " line numbers
  set nocompatible
  set ruler
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set list listchars=tab:\ \ ,trail:·
  set expandtab
  set backupdir=/Volumes/Data/Backup/.vim_backup
  set dir=/Volumes/Data/Backup/.vim_backup
  set swapfile
  "set transparency=10

  colorscheme desert
  "colorscheme  flatland
  "colorscheme  Tomorrow-Night-Eighties
  "colorscheme mirodark
  "colorscheme ir_black
  "colorscheme solarized

  " Set encoding
  set encoding=utf-8
  set enc=utf-8

  " Start in fullscreen mode
  "set fullscreen

  " Status bar
  set laststatus=2

  " allow backspacing over everything in insert mode
  set backspace=indent,eol,start

  " Use modeline overrides
  set modeline
  set modelines=10

  " This shows what you are typing as a command.
  set showcmd

  set cursorline
  set ttyfast
  set history=1000
  set undofile
  set undodir=~/vim_backup
  set undoreload=10000
  set splitbelow
  set splitright
  set autoread
  set dictionary=/usr/share/dict/words

  " Resize splits when the window is resized
  au VimResized * exe "normal! \<c-w>="


" Packages
" ========

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " let Vundle manage Vundle. Required!
  Bundle 'gmarik/Vundle.vim'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'L9'
  Bundle 'FuzzyFinder'
  Bundle 'wincent/Command-T'
  Bundle 'godlygeek/tabular'

  " All of your Plugins must be above this line
  call vundle#end()

" Movement
" ========

  set scrolloff=6
  set sidescroll=1
  set sidescrolloff=10

" MacVIM Settings
" ===============

  " Switch between open split windows in MacVim
  " http://superuser.com/questions/387207/how-do-i-map-cmd-shift-f-to-run-ack-plugin-in-vim
  nmap <D-J> <C-w>w
  nmap <D-K> <C-w>w

  " Show toolbar in MacVIM
  if has("gui_running")

    :hi TabLine guibg=#303030
    :hi TabLineFill guifg=#303030

    set guifont=CosmicSansNeueMono:h16
    "set guifont=Source\ Code\ Pro:h17
    "set guifont=Menlo:h15
    "set guifont=Consolas:h16
    "set guifont=Inconsolata-dz\ for\ Powerline:h15
    "set guifont=Inconsolata:h14

    " Remove all the UI cruft
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R
    set go+=m " Show menubar
    set go+=g " Grey menu itmems
    set go-=r " Right hand scrollbar not always present

    highlight SpellBad term=underline gui=undercurl guisp=Orange

    " Different cursors for different modes.
    "set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    "set guicursor+=i-ci:ver20-iCursor

    if has("gui_macvim")
        " Full screen means FULL screen
        set nofullscreen
        set fuoptions=maxvert,maxhorz
        " ...but we don't need that by default
    else
        " Non-MacVim GUI, like Gvim
    end
  else
    " Console Vim
  endif

" German Keyboard options
" ========================

  " Change default modifier key (German keyboard)
  let mapleader=","

  " Jump to above/below paragraph with t/T
  " This is useful for German Keyboards, since
  " the curly brackets are hidden behind some meta-key
  noremap Ö {
  noremap ö }

" Folding options
" ================

  set foldtext=MyFoldText()

  function! MyFoldText()
    " do whatever processing you want here
    " the function will be called for each folded line visible on screen
    " the line number of each fold's "head" line will be in v:foldstart
    " last line of fold in v:foldend
    " can do whatever processing you want, then return text you want
    " displayed:
    let line = getline(v:foldstart)
    " Remove comment characters and gibberish
    let line = substitute(line, "{,\\=[^,]*$", "", "g")
    let foldedlinecount = v:foldend - v:foldstart
    return '+-'.line.'['.foldedlinecount.']'
  endfunction

  " au BufWinLeave *.* mkview           " Remember manual foldings
  " au BufWinEnter *.* silent loadview  " Load foldings on startup
  "set foldminlines=5 " Minimum lines to create fold

  set foldlevelstart=0

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za

  " Make zO recursively open whatever top level fold we're in, no matter where the
  " cursor happens to be.
  nnoremap zO zCzO

" Other Mappings
" ==============

  " EasyMotion
  "let g:EasyMotion_leader_key = '<Leader>'
  nnoremap f <leader><leader>w
  "nnoremap t <Leader>w
  "vnoremap t <Leader>w


  " Mac specific: Text-to-speech on selected text in visual mode
  " w: Don't replace selection with command output after execution
  " silent: Don't prompt for enter after execution
  vnoremap <leader>v :w<Home>silent <End> !say <CR>

  " Remap T to play a macro
  nnoremap T @

  " Don't switch to insert mode after inserting a new line
  nnoremap * maO<esc>`a
  nnoremap + mao<esc>`a

  " Move through wrapped lines as expected
  noremap  <buffer> <silent> k gk
  noremap  <buffer> <silent> j gj
  noremap  <buffer> <silent> 0 g0
  noremap  <buffer> <silent> $ g$

  " Search mappings: These will make it so that going to the next one in a
  " search will center on the line it's found in.
  map N Nzz
  map n nzz

" Searching
" ==========

  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

  " Clear search highlights
  noremap <silent><Leader>/ :nohls<CR>

" Tricks
" =======

  "Reselect visual block after indent/outdent
  vnoremap < <gv
  vnoremap > >gv

  " Remember last location in file
  if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal g'\"" | endif
  endif

  " Fix common typos
  :command WQ wq
  :command Wq wq
  :command W w
  :command Q q

  " Set off the other paren
  highlight MatchParen ctermbg=4

  " Keep search matches in the middle of the window and pulse the line when moving
  " to them.
  nnoremap n nzzzv:call PulseCursorLine()<cr>
  nnoremap N Nzzzv:call PulseCursorLine()<cr>

" Coding options
" ==============

  " This enables automatic indentation as you type.
  filetype indent on

  " Auto Commands
  " Automatically cd into the directory that the file is in
  " autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
  set autochdir

  " Remove any trailing whitespace that is in the file
  " autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

  " Restore cursor position to where it was before
  augroup JumpCursorOnEdit
     au!
     autocmd BufReadPost *
              \ if expand("<afile>:p:h") !=? $TEMP |
              \   if line("'\"") > 1 && line("'\"") <= line("$") |
              \     let JumpCursorOnEdit_foo = line("'\"") |
              \     let b:doopenfold = 1 |
              \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
              \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
              \        let b:doopenfold = 2 |
              \     endif |
              \     exe JumpCursorOnEdit_foo |
              \   endif |
              \ endif
     " Need to postpone using "zv" until after reading the modelines.
     autocmd BufWinEnter *
              \ if exists("b:doopenfold") |
              \   exe "normal zv" |
              \   if(b:doopenfold > 1) |
              \       exe  "+".1 |
              \   endif |
              \   unlet b:doopenfold |
              \ endif
  augroup END

" Functions
" ==========

  function! PulseCursorLine()
      let current_window = winnr()

      windo set nocursorline
      execute current_window . 'wincmd w'

      setlocal cursorline

      redir => old_hi
          silent execute 'hi CursorLine'
      redir END
      let old_hi = split(old_hi, '\n')[0]
      let old_hi = substitute(old_hi, 'xxx', '', '')

      hi CursorLine guibg=#2a2a2a ctermbg=233
      redraw
      sleep 20m

      hi CursorLine guibg=#333333 ctermbg=235
      redraw
      sleep 20m

      hi CursorLine guibg=#3a3a3a ctermbg=237
      redraw
      sleep 20m

      hi CursorLine guibg=#444444 ctermbg=239
      redraw
      sleep 20m

      hi CursorLine guibg=#3a3a3a ctermbg=237
      redraw
      sleep 20m

      hi CursorLine guibg=#333333 ctermbg=235
      redraw
      sleep 20m

      hi CursorLine guibg=#2a2a2a ctermbg=233
      redraw
      sleep 20m

      execute 'hi ' . old_hi

      windo set cursorline
      execute current_window . 'wincmd w'
  endfunction

" Status line
" ============

  augroup ft_statuslinecolor
      au!

      au InsertEnter * hi StatusLine ctermfg=196 guifg=#FF3145
      au InsertLeave * hi StatusLine ctermfg=130 guifg=#CD5907
  augroup END

  set statusline=%f    " Path.
  set statusline+=%m   " Modified flag.
  set statusline+=%r   " Readonly flag.
  set statusline+=%w   " Preview window flag.

  set statusline+=\    " Space.

  set statusline+=%#redbar#                " Highlight the following as a warning.
  "set statusline+=%{SyntasticStatuslineFlag()} " Syntastic errors.
  set statusline+=%*                           " Reset highlighting.

  set statusline+=%=   " Right align.

  " File format, encoding and type.  Ex: "(unix/utf-8/python)"
  set statusline+=(
  set statusline+=%{&ff}                        " Format (unix/DOS).
  set statusline+=/
  set statusline+=%{strlen(&fenc)?&fenc:&enc}   " Encoding (utf-8).
  set statusline+=/
  set statusline+=%{&ft}                        " Type (python).
  set statusline+=)

  " Line and column position and counts.
  set statusline+=\ (line\ %l\/%L,\ col\ %03c)
