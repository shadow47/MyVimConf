set t_Co=256
set number
set laststatus=2
" set foldmethod=syntax
set mouse=a
set history=1000
filetype plugin indent on
set ignorecase 
set smartcase  
set incsearch  
set hlsearch
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd 
set cursorline
set wildmenu
set lazyredraw
set showmatch
set nocompatible
set backspace=indent,eol,start

inoremap jj <ESC>

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
Plug 'pangloss/vim-javascript'

call plug#end()

let g:jsx_ext_required = 0

" NERDTREE CONFIG START ********************************************************************************************
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

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
let g:syntastic_java_checker = ['java']
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

colorscheme Tomorrow 


let mapleader = ","
call camelcasemotion#CreateMotionMappings('<leader>')

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>a :Ag<space>
let g:nerdtree_tabs_autofind=1
let NERDTreeMapOpenInTab='<leader>t'


" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

set relativenumber
command Q q
vno v <esc>

map <leader>n <plug>NERDTreeTabsToggle<CR>
