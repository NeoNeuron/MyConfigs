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
Plugin 'Lokaltog/vim-powerline'
" Plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'minibufexpl.vim'
"Plugin 'taglist.vim'
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
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

" Regular Settings
set nu
set tabstop=2
set softtabstop=2
set shiftwidth=2
syntax on

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

"" Taglist.vim
"let Tlist_Show_One_File=1    " Only show the taglist in one file
"let Tlist_Exit_OnlyWindow=1  " Exit when taglist is the only window
"let Tlist_Use_Right_Window=1 " Show the taglist on the right
"let Tlist_Sort_Type="name"   " Sort tags by name

" minibufexpl.vim
let g:miniBufExplMaxSize=2

" vim-powerline setups
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized256'
set t_Co=256
set nocompatible
set laststatus=2 
set guifont=Source\ Code\ Pro\ for\ Powerline:h12 
set noshowmode
"let g:minBufExplForceSyntaxEnable = 1
