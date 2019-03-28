set nocompatible              " be iMproved, required
filetype off                  " required

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
" add autocomplete for css files
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" saves previous undoes from before file was closed
if has("vms")
	  set nobackup
	else
	  set backup
	  if has('persistent_undo')
	    set undofile
	  endif
	endif
" set colorscheme to wombat256
colorscheme wombat256
" store vim swapfiles in ~/.vim/tmp
set directory^=~/.vim/tmp//
