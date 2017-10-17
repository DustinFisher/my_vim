runtime macros/matchit.vim
set nocompatible      " Use vim, no vi defaults

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle Manage Vundle
Plugin 'gmarik/vundle'

" My Bundles
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kikijump/tslime.vim'
Plugin 'jgdavey/vim-turbux'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slim-template/vim-slim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'dsawardekar/ember.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'posva/vim-vue'
Plugin 'slashmili/alchemist.vim'

" Basic Setup
set number            " Show line numbers
set ruler             " Show line and column number
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
let NERDTreeIgnore = ['\.swp$']
set colorcolumn=80
highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
colorscheme molokai

set term=screen-256color

let g:ackprg = 'ag --nogroup --nocolor --column'

" Enable slim syntax highlight
autocmd FileType slim setlocal foldmethod=indent
autocmd BufNewFile,BufRead *.slim set filetype=slim

" Enable handlebars syntax highlight
au BufReadPost *.hbs set filetype=html.mustache syntax=html.mustache

call vundle#end()

syntax on
filetype off
filetype plugin indent on
