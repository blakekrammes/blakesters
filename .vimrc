" basics: 
    set nocompatible              
    filetype off                 
    syntax on
    set number

" abbreviations:
    abbr _email blake.c.krammes@gmail.com 

" non-recursive key mappings:
    " use space to scroll down
    noremap <SPACE> <C-F> 
    " use tab to move to next sentence
    noremap <TAB> ) 

" vim plugins/plugin managers:
    filetype plugin indent on
    " vim-plug 
    call plug#begin('~/.vim/plugged')
        Plug 'https://github.com/Valloric/YouCompleteMe'
    call plug#end()
    " pathogen 
    execute pathogen#infect()  

" tab, space, and backspace settings: 
    " set autoindenting for new code blocks 
    set autoindent 
    set cindent 
    " show existing tab with 4 spaces width
    set tabstop=4
    " when indenting with '>', use 4 spaces width
    set shiftwidth=4
    " on pressing tab, insert 4 spaces
    set expandtab
    " set backspace <Del> to work as it does in other text editors
    set backspace=indent,eol,start

" autocompletion:
    " close autocomplete help window if you exit insert mode or select a prompt  
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif 
    " redefine emmet command as ',,'
    let g:user_emmet_leader_key=','
    " add autocomplete for css files
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    
" custom code-snippets;
    " react class component boilerplate
    inoremap _rc <Esc>:.-1r ~/.vim/boilerplate/react/class_component.js<cr>:%s/___/\=expand('%:r')/g<cr>jdd8ki<Tab><Tab><Tab><Tab>
    " react functional component boilerplate
    inoremap _rfc <Esc>:.-1r ~/.vim/boilerplate/react/functional_component.js<cr>:%s/___/\=expand('%:r')/g<cr>jdd7ki<Tab><Tab><Tab>

" editing/comparing multiple files:
    " set vim window splits to be equal in width
    set ead=hor ea noea
    " command to equalize screen spacings
    command Fvs :set ead=hor ea noea
    " set vsplit to open new window to the right
    set splitright
    " show diffs side by side
    set diffopt+=vertical 
 
" vim stylings:
    " set colorscheme 
    colorscheme wombat256

" vim system settings:
    " saves previous undoes from before file was closed
    if has("vms")
          set nobackup
        else
          set backup
          if has('persistent_undo')
            set undofile
          endif
        endif
    " store vim swapfiles in ~/.vim/tmp
    set directory^=~/.vim/tmp//
