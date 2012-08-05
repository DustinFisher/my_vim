set number
set ts=2 sts=2 sw=2 expandtab
syntax on
colorscheme molokai

autocmd bufwritepost .vimrc source $MYVIMRC

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
