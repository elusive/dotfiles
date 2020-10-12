" Better nav for omni complete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Escaping is the worst
inoremap kj <Esc>
inoremap ii <Esc>
nnoremap <C-c> <Esc>

" Using TAB in general mode to move between buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Close buffer w/o quiting
nnoremap <leader>q :bp<CR>:bd #<CR>

" Adding windows way to save file and quit
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq!<CR>

" Tab Completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window naviation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
