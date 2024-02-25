set encoding=utf-8
set termguicolors

call plug#begin('~/.vim/plugged')

"Plug 'rhysd/vim-clang-format'


"Plug 'arzg/vim-substrata'
"Plug 'bagrat/vim-buffet'
"Plug 'preservim/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'cpiger/NeoDebug'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'normen/vim-pio'
Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
Plug 'cpiger/NeoDebug'
Plug 'vim-utils/vim-man'
"Plug 'arcticicestudio/nord-vim'
"Plug 'chriskempson/vim-tomorrow-theme'
"Plug 'danishprakash/vim-yami'
"Plug 'preservim/nerdcommenter'
"Plug 'airblade/vim-rooter'
"Plug 'arcticicestudio/nord-vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdtree'
"Plug 'tpope/vim-surround'
"Plug 'ajh17/Spacegray.vim'
"Plug 'tyrannicaltoucan/vim-deep-space'
"Plug 'arcticicestudio/nord-vim'
"Plug 'stevearc/aerial.nvim'

Plug 'bfrg/vim-cpp-modern'
"Plug 'simrat39/symbols-outline.nvim'

Plug 'lambdalisue/vim-manpager'

" neobundle.
call plug#end()

set noshowmode

" Disable function highlighting (affects both C and C++ files)
"let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1


" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

"highlight Cursor guifg=white guibg=blue
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkon1
let g:borlandp_bg = "black"

"set cursorline 
set background=dark
"colorscheme darkspace 
"colorscheme relaxedgreen
"colorscheme golden " TRY THIS
"colorscheme borlandp 
colorscheme darkspace 

"map <C-q> :wqa<CR>
set mouse=a

set background=dark
syntax on 
set nu
set autoindent
set noic
let g:darkspace_italics=1
"set laststatus=2
set statusline=\ ->%f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)
:hi MyRedHighlightingGroup ctermfg=red ctermbg=black guifg=red guibg=black


filetype plugin indent on
set belloff=all
set t_Co=256


map <C-a> :badd  
map <C-b> :buffer  
"map <C-S-B> :buffers<CR> 
map <C-l> :bnext<CR>
map <C-h> :bprevious<CR>
"map <C-n> :NERDTreeToggle<CR>
"map <C-w> :w<CR>
map <C-q> :bdelete!<CR>
"map <C-z> :!zsh<CR>set
"map <C-s> :source ./.session.vim<CR>
"hi Normal guibg=NONE ctermbg=NONE

"FZF 
map <C-b> :Buffers <CR>
map <C-f> :Files <CR>
map <C-M> :Marks <CR>
if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
				\ | wincmd p | diffthis
endif
"set colorcolumn=100
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set hlsearch
nmap <silent> gd <Plug>(coc-definition)
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

command! Xs :mks! | :xa "save the session, save modified files, and exit 

"" Customize cokc color
"func! s:my_colors_setup() abort
    " this is an example
    "hi Pmenu guibg=#000000 gui=NONE
    "hi PmenuSel guibg=#ebb249 gui=NONE
    "hi PmenuSel guifg=#000000 gui=NONE
    "hi PmenuSbar guibg=#000000
    "hi PmenuThumb guibg=#000000
"endfunc

"augroup colorscheme_coc_setup | au!
"    au ColorScheme * call s:my_colors_setup()
"augroup END
"inoremap <C-P> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
