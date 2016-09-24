set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256
set number
set laststatus=2
set foldmethod=syntax
set mouse=a
set history=1000
set ignorecase 
set smartcase  
set incsearch  
set hlsearch
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set showcmd 
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch


call plug#begin()
Plug 'scrooloose/nerdtree'  
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'mxw/vim-jsx'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'bkad/CamelCaseMotion'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'


call plug#end()

" NERDTREE CONFIG START ********************************************************************************************
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" NERDTREE CONFIG END **********************************************************************************************

" SYNATASTIC CONFIG START ******************************************************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
" SYNTASTIC CONFIG END *********************************************************************************************

" CTRLP CONFIG START ***********************************************************************************************
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.config     " MacOSX/Linux
 set wildignore+=/home/bharat/.*
 let g:ctrlp_map = '<c-P>'
 let g:ctrlp_cmd = 'CtrlP'
 

 " Search from current directory instead of project root
 " let g:ctrlp_working_path_mode = 0

  let g:ctrlp_working_path_mode = 'ra'
  
  
    let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
  
  
" CTRLP CONFIG END *************************************************************************************************

" AIRLINE CONFIG START
" air-line
let g:airline_powerline_fonts = 1


let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='wombat'

" AIRLINE CONFIG END

colorscheme apprentice


let mapleader = ","
call camelcasemotion#CreateMotionMappings('<leader>')

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>a :Ag
