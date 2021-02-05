
call plug#begin('~/.config/nvim/plugg')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cohama/lexima.vim'
Plug 'majutsushi/tagbar'
Plug 'szw/vim-tags'
Plug 'vim-scripts/a.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
call plug#end()

"setting vim
set exrc
set nocompatible
set wildmenu "to enable menu :https://i.stack.imgur.com/hUXZv.png
"set laststatus=2 "show the bar in down
"Function to toggle the mouse [Key = leader + m]
 function! ToggleMouse()
     "check if mouse is enabled
     if &mouse == 'a'
         " disable mouse
         set mouse=
     else
         " enable mouse everywhere
         set mouse=a
     endif
 endfunc
syntax on
set encoding=utf-8
filetype plugin indent on
set nu "show number to left
set relativenumber 
set bs=2
"set cmdheight=2 "Give more space for displaying messages.

" if you have a 256 color terminal if not use highlight ColorColumn ctermbg = 16
highlight ColorColumn ctermbg=238
"set hidden "https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hlsearch "it will enable the highlighting search matches ;for disable :nohlsearch
set incsearch "https://miro.medium.com/max/626/1*jP9h3BO_2uOHGe3N4lBkZA.gif
set noswapfile
set nowrapscan
set nowrap
set nohlsearch
set showmatch "enable MatchParen
"                       Color shading  Color pointer
hi MatchParen cterm=none ctermbg=black ctermfg=blue
set tabstop=4 shiftwidth=4 expandtab
"histories
set undodir=~/.config/nvim/undo " where to save undo histories
set undofile                " Save undos after file closes
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set updatetime=2000
"folding settings "https://www.youtube.com/watch?v=pnc9_d1k5-4 and https://vim.fandom.com/wiki/Folding
set foldmethod=manual
set foldlevel=1

"autocmd BufWinLeave *.* mkview "to save folding 
"autocmd BufWinEnter *.* silent loadview "to load folding from file ~/.vim/view
"tagbar setting https://vimawesome.com/plugin/tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F7> :TagbarOpenAutoClose<CR> 

 " better key bindings for UltiSnipsExpandTrigger
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 let g:UltiSnipsExpandTrigger = "<tab>"
 let g:UltiSnipsJumpForwardTrigger = "<tab>"
 let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"   
 let g:UltiSnipsEditSplit="vertical"
 let g:SuperTabDefaultCompletionType = '<C-n>' 

""hi Pmenu guibg=#d7e5dc gui=NONE
"hi PmenuSel guibg=#b7c7b7 gui=NONE
"hi PmenuSbar guibg=#bcbcbc
"hi PmenuThumb guibg=#585858
    

"change key esc to `
nmap ` <esc> 
imap ` <esc>
vmap ` <esc>
omap ` <esci>

hi Pmenu ctermbg=black ctermfg=white
