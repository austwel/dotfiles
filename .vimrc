set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'sheerun/vim-polyglot'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'junegunn/goyo.vim'

Plugin 'tlhr/anderson.vim'
Plugin 'alessandroyorba/alduin'
call vundle#end()

filetype plugin indent on
syntax on

autocmd VimEnter * NERDTree | wincmd p
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTree | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

set hidden
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set updatetime=100

let g:NERDTreeMinimalUI=1

let g:alduin_Shout_Dragon_Aspect=1
let g:alduin_Shout_Become_Ethereal=0
colorscheme alduin

highlight ColorColumn ctermbg=DarkGrey guibg=DarkGrey
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%121v', 100)
