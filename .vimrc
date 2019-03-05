" set encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" <Leader>
let mapleader=";"

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
" Plugin 'vim-airline/vim-airline'
" Plugin 'lilydjwg/fcitx.vim'

call vundle#end()
filetype plugin indent on

" themes
set background=dark
"colorscheme solarized
syntax enable
"colorscheme monokai
"colorscheme phd

map <C-n> :NERDTreeToggle<CR>

" hi Normal ctermfg=None


" =========Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:Syntastic_cpp_checkers = ['gcc']
let g:cpp_class_scope_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"set error or warning signs
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'
"whether to show balloons
let g:syntastic_enable_balloons = 1

" switch *.cpp *.h
nmap <silent> <Leader>sw :FSHere<cr>

" fold code  operate：za，open or close fold；zM，close all fold；zR，open all fold
"set foldmethod=indent
set foldmethod=syntax
" start vim close fold code
set nofoldenable

" YCM
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

let g:ycm_complete_in_comments=1

let g:ycm_confirm_extra_conf=0

let g:ycm_collect_identifiers_from_tags_files=0

set completeopt-=preview

let g:ycm_min_num_of_chars_for_completion=1

let g:ycm_cache_omnifunc=0

let g:ycm_seed_identifiers_with_syntax=1


" tab to space
set expandtab
" tab = 2space
set tabstop=2
" format tab
set shiftwidth=2
" let vim regard 2space as tab
set softtabstop=2

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 标签列表

" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" 代码导航
 
" 基于标签的代码导航

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 基于语义的代码导航

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" 查找

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>
