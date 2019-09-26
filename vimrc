
" =============================================================
"                 GENERAL SETTINGS
" =============================================================

source ~\dotfiles\vim\colors\railscasts.vim

set backspace=indent,eol,start
set history=1000
set ruler
set showcmd
set autoindent
set showmatch
set nowrap
set autoread
set autowrite
set backupdir=~/.tmp
set directory=~/.tmp
set number
set wrap
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

" =============================================================
"                    AUTOCOMMANDS
" =============================================================

if has("autocmd")
  augroup vimrcEx
    au!

    autocmd BufRead *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
    autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
    autocmd BufRead * normal zR
    " autocmd BufWinLeave *.* mkview

    " autocmd BufWinEnter *.* silent loadview
    au BufNewFile,BufReadPost *.md set filetype=markdown
    au BufNewFile,BufReadPost *.vue syntax sync fromstart

    autocmd FileType javascript set formatprg=prettier\ --stdin
    "autocmd BufLeave,FocusLost * silent! wall
    autocmd filetype crontab setlocal nobackup nowritebackup

  augroup END
endif

" =============================================================
"                      MAPPINGS
" =============================================================

let mapleader = ","

" insert mode
"inoremap <c-e> <down>
"inoremap <c-n> <left>
"inoremap <c-y> <up>
"inoremap <c-i> <right>

" Quick open most used files
nnoremap <leader>em :!open -a 'Marked 2.app' '%:p'<cr>
nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>es :vs<cr>:UltiSnipsEdit<cr>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

" create/open file in current folder
map <Leader>ee :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>

nnoremap <silent> <space> :nohl<Bar>:echo<CR>
nnoremap <leader>w mzyyp`zj
nnoremap <leader>v :set invpaste paste?<CR>
nnoremap <leader>V V`]
nnoremap <leader>I V`]=
nnoremap <leader>a ggVG
nnoremap <leader>r :syntax sync fromstart<CR>
nmap k gk
nmap j gj

noremap <Leader>d :Bclose<CR>
noremap <Leader>D :bufdo bd<CR>

cnoremap %% <C-R>=expand("%:p:h") . "/" <CR>

" FZF
nnoremap <leader>f :GFiles<cr>
nnoremap <leader>t :Files<cr>
nnoremap <leader>. :Buffers<cr>

" Fugitive
nnoremap <leader>gg :Gstatus<CR>:only<CR>
nnoremap <leader>gw :Gwrite<CR>

" Tabs
nnoremap <leader>1 1gt<cr>
nnoremap <leader>2 2gt<cr>
nnoremap <leader>3 3gt<cr>
nnoremap <leader>4 4gt<cr>

" inc search for range commands
cnoremap $t <CR>:t''<CR>
cnoremap $T <CR>:T''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $M <CR>:M''<CR>
cnoremap $d <CR>:d<CR>``

" saves cursor after yanking in visual mode
vnoremap y myy`y
vnoremap Y myY`y

nnoremap <leader>s :w<cr>


" =============================================================
"                      APPEARANCE
" =============================================================

"set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" colorscheme cobalt2
" colorscheme base16-default-dark 
" set background=dark

if has("gui_running")
  "set guifont=Operator\ Mono:h18
  set guifont=Input\ Mono:h18
  set linespace=6
  set guioptions-=r
  let g:material_theme_style = 'default' " 'palenight' | 'dark'
  let g:material_terminal_italics = 1
endif

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" =============================================================
"                      CUSTOM FUNCTIONS
" =============================================================

" Create folders on file save
" ===========================

function! s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction

" Remove whitespaces on save saving cursor position
" =================================================

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
