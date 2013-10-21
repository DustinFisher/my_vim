set nocompatible      " Use vim, no vi defaults
filetype off          " required by vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle Manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kikijump/tslime.vim'
Bundle 'jgdavey/vim-turbux'
Bundle 'tpope/vim-dispatch'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'juvenn/mustache.vim'

" Basic Setup
set number            " Show line numbers
set ruler             " Show line and column number
syntax on        " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

let mapleader=","
inoremap jk <esc>
nmap <silent> <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
set colorcolumn=80
highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
colorscheme molokai

set term=screen-256color

let g:ackprg = 'ag --nogroup --nocolor --column'


filetype plugin indent on
