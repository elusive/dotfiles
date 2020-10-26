" Better nav for omni complete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Escaping is the worst
inoremap kj <Esc>
inoremap ii <Esc>
nnoremap <C-c> <Esc>

" Using TAB in general mode to move between buffers
nnoremap <silent> <TAB> :bnext<CR> <bar> :call SyncNerdTree()<CR> <bar> <C-w>l
nnoremap <silent> <S-TAB> :bprevious<CR> <bar> :call SyncNerdTree()<CR> <bar> <C-w>l

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

" C++ compile and run
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r < ./input.txt <CR>
autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd BufNewFile  *.cpp 0r ~/.config/nvim/template/template.cpp 
autocmd BufRead *.cpp if getfsize(expand('%'))==0|$r ~/.config/nvim/template/template.cpp|endif

