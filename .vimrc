" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim


"---->> Vundle management
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"~~~All the plugins go here
"::::Vundle itself::::
Plugin 'VundleVim/Vundle.vim'
"::::jedi-vim::::
Plugin 'davidhalter/jedi-vim'

"::::syntax checker::::
Plugin 'scrooloose/syntastic'
" Syntastic statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Sytnastic settings
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_loc_list_height=1
let g:syntastic_check_on_wq = 0
" Better symbols
let g:syntastic_error_symbol = 'XX'
let g:syntastic_warning_symbol = '!!'

"::::Status line modification::::
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"::::vertical indentation lines::::
"Plugin 'yggdroot/indentline'
"::::Highlights trailing whitespace::::
Plugin 'bronson/vim-trailing-whitespace'
"::::Auto close special characters::::
"Plugin 'townk/vim-autoclose'
"::::Color tab page::::
"Plugin 'tabpage.vim'
"::::ColorScheme::::
Plugin 'sjl/badwolf'
"::::Search complete::::"
Plugin 'SearchComplete'
"::::Tab completion::::
Plugin 'ajh17/vimcompletesme'
"::::Enhance Folding::::
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1     "To enable docstrings
"for pep8
Plugin 'nvie/vim-flake8'
"::::Extension to take notes::::"
Plugin 'vimwiki/vimwiki'



call vundle#end()
filetype plugin indent on
"<<---- Vundle

set showmatch		" Show matching brackets.
let python_highlight_all=1
set colorcolumn=100
set noswapfile
set nu			" Show line number
"set incsearch		" Incremental search
"set mouse=a		" Enable mouse usage (all modes)


set background=light
set foldmethod=indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set expandtab
colorscheme desert

set nocompatible
filetype plugin on
syntax on

"---->> Highlight Spelling mistakes
set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
"<<---- Highlight

"---->> Move between panes using keyboard
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"<<---- Move between panes
