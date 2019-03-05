" set encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" set line number
set nu
set number

" highlight the current line
" set cursorline
" set cul

" highlight the current column
" set cursorcolumn
" set cuc

" set cursor position
set ruler

" check file type
filetype plugin indent on

filetype indent on

" get the .vimrc effect now
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" show parens
set showmatch

" set tab=4
set tabstop=4

" set auto indent
set shiftwidth=4

" orient the forward line's indent
set autoindent

" set mouse right click to paste
" set paste
set mouse=a

" show tab and space
set listchars=tab:>-,trail:-

" search highlight
set hlsearch

" search ignore case
set ignorecase

" powerline setting
let g:powerline_pycmd="py3"
set laststatus=2
set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim

set incsearch
set nocompatible
set wildmenu

" vundle setting
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-scripts/phd'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
" Plugin 'lilydjwg/fcitx.vim'

call vundle#end()
filetype plugin indent on

" themes
set background=dark
"colorscheme solarized
syntax enable
colorscheme monokai
"colorscheme phd

map <C-n> :NERDTreeToggle<CR>

