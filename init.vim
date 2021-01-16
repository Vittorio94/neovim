call plug#begin("~/.config/nvim/plugged")
Plug 'mattn/emmet-vim'
Plug 'arcticicestudio/nord-vim' "nord vim theme
Plug 'arcticicestudio/nord-vim', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim' "status bar
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tmhedberg/SimpylFold' "code folding
Plug 'jiangmiao/auto-pairs' " automatic quote and braket completion
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/majutsushi/tagbar' "show class tree
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'
call plug#end()

"Config Section
if (has("termguicolors"))
set termguicolors
endif
syntax on 

let g:lightline = {}
let g:lightline.colorscheme = 'nord'

colorscheme nord

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" settings for the airline status bar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

" enable line numbers
set relativenumber 
set cursorline

" set tab as 4 spaces
set showmatch	"Highlight matching brace
set nowrap
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	"Always case-insensitive
set incsearch	" Searches for strings incrementally
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set expandtab	"spaces instead of tabs
set foldmethod=indent "uses indentation to fold code
set scrolloff=5 "always show 5 lines when scrolling
"move up and downcode blocks with ctrl+alt+N/M
nnoremap <C-A-n> }
nnoremap <C-A-m> {

"increase-decrease window height remap
nnoremap <A-+> :resize +5<CR>
nnoremap <A--> :resize -5<CR>

set encoding=utf8 "needed to display icons in nerdtree
set guifont=DroidSansMono\ Nerd\ Font\ 11

set clipboard=unnamedplus "copy to clipboard

let g:deoplete#enable_at_startup = 1 "enable deoplete

"emmet with ,,
let g:user_emmet_leader_key=','

"tagbar with ctrl+g
nmap <C-s> :TagbarToggle<CR>

"Auto close youcompleteme preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
