
" .............NERDTree........................................................

let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeMouseMode=3

" Open nerd tree at the current file or close nerd tree if pressed again.
nnoremap <silent> <expr> <leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" sync buffer with nerdtree if opens
function! SyncNerdTree() 
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        NERDTreeFind
    endif
endfunction
