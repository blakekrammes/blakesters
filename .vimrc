set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lineset number " show line numbers
noremap <SPACE> <C-F> " use space to scroll down
noremap <TAB> ) " use tab to move to next sentence
abbr _email blake.c.krammes@gmail.com 
syntax on
set diffopt+=vertical " Show diffs side by side
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
call plug#end()
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set number
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Set backspace <Del> to work as it does it other text editors
set backspace=indent,eol,start
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif " close the autocomplete help after selecting autocompled line 
set autoindent " set autoindenting for new code blocks 
set cindent " same as above
" pathogen plugin manager
execute pathogen#infect()  
" redefine emmet command as ','
let g:user_emmet_leader_key=','
" React class component boilerplate
:inoremap _rc <Esc>:.-1r ~/.vim/boilerplate/react/class_component.js<cr>:%s/___/\=expand('%:r')/g<cr>jdd8ki<Tab><Tab><Tab><Tab>
" React functional component boilerplate
:inoremap _rfc <Esc>:.-1r ~/.vim/boilerplate/react/functional_component.js<cr>:%s/___/\=expand('%:r')/g<cr>jdd7ki<Tab><Tab><Tab>
" Set vim window splits to be equal in width
:set ead=hor ea noea
" command to fix screen spacings
:command Fvs :set ead=hor ea noea
" set vsplit to open new window to the right
:set splitright
