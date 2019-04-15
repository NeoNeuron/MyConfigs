set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
" Plugins from GitHub
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin from http://vim-scripts.org/vim/scripts.html
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""
" ycm setting
""""""""""""""""""""""""""""""
" After run :PluginInstall in vim
" Make sure cmake python3-dev are installed
" cd ~/.vim/bundle/YouCompleteMe/ && ./install.sh --clang-completer
" cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
"		~/
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Regular Settings
set nu
" Set relative line numbers
augroup relative_numbser
 autocmd!
 autocmd InsertEnter * :set norelativenumber
 autocmd InsertLeave * :set relativenumber
augroup END

set tabstop=2
set softtabstop=2
set shiftwidth=2
syntax on
set hlsearch
set backspace=2
set cul

" NERDTree
map <C-n> :NERDTree<CR>

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : '☒ ',
    \ "Unknown"   : "?"
    \ }
" indentLine:
let g:tex_conceal=''

" vim-airline settings:
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
noremap <tab> :bn<cr> "set tab mapping"
noremap <S-tab> :bN<cr> "set tab mapping"
let g:airline_theme='powerlineish'
set laststatus=2 
set t_Co=256
set encoding=utf-8

" vim-latex-live-preview:
autocmd Filetype tex setl updatetime=1000
let g:livepreview_previewer='open -a Skim'

let g:livepreview_engine='xelatex'

" YouCompleteMe setting
let g:ycm_key_list_select_completion = ["<C-j>", "<Down>", "<tab>"]
let g:ycm_key_list_previous_completion = ["<C-k>", "<Up>", "<s-tab>"]

" ultisnips setting
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

let g:UltiSnipsEditSplit='vertical'
