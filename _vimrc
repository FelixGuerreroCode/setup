
let mapleader = ','

nnoremap <leader>. :CtrlPTag<cr>

" Display the full path of the current file
nnoremap <leader>a :source \Users\felixg\work\team\teamc\env-configuration\vim\jsp_matcher\c-search.vim<cr>
nnoremap <leader>c :<s-"><s-*>yw<cr>
nnoremap <leader>D :NERDTreeToggle<cr>
nnoremap <leader>F :GFiles<cr>
nnoremap <leader>J :NERDTreeFromBookmark JSP<cr>
nnoremap <leader>R :Rg<cr>
nnoremap <leader>S :source \Users\felixg\work\team\teamc\pol\web-pol\src\main\webapp\WEB-INF\formatter.vim<cr><Esc>
nnoremap <leader>G :source \Users\felixg\work\team\teamc\pol\web-pol\src\main\webapp\WEB-INF\sed.vim<cr><Esc>
nnoremap <leader>V : so $MYVIMRC<cr>
nnoremap <leader>ba :cex []<CR> :silent bufdo vimgrepadd /<C-r><C-w>/ %<CR>
nnoremap <leader>bs :cex []<CR> :silent bufdo vimgrepadd // % <Left><Left><Left>
nnoremap <leader>d :NERDTreeFind<cr>
nnoremap <leader>fb ?Building<CR>
nnoremap <leader>ff :/<C-R>"<CR>
nnoremap <leader>ft /aopalliance<CR>
nnoremap <leader>fx /aopalliance<CR>
nnoremap <leader>g :silent execute "grep display " . expand('%:p')<cr>:copen<cr>
nnoremap <leader>h :help myhelp<cr>
nnoremap <leader>j :NERDTreeFromBookmark JS_Src<cr>
nnoremap <leader>m :MRU<cr>
nnoremap <leader>n /*=<cr>zt<cr>
nnoremap <leader>nh <C-W>h
nnoremap <leader>nj <C-W>j
nnoremap <leader>nk <C-W>k
nnoremap <leader>nl <C-W>l
nnoremap <leader>p ?*=<cr> n<cr> zt<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>x :source \Users\felixg\work\team\teamc\pol\web-pol\src\main\webapp\WEB-INF\ummatched.vim<cr><Esc>
nnoremap <leader>s :MRU<cr>/<C-R><S-*><cr><S-z>r
nnoremap <leader>t :NERDTreeFromBookmark TODO<cr>
nnoremap <leader>v : tabnew $MYVIMRC<cr>G<cr>
nnoremap <leader>w : !start explorer /select,%:p<cr>
nnoremap <leader>y :let @*=expand("%:p")<CR>

inoremap jj <Esc>

nmap <silent> ,/ :nohlsearch<CR>

" Generic Settings
syntax enable
syntax on
filetype plugin indent on

set grepprg=grep

set guioptions-=T
set guioptions-=r
set laststatus=2
set modifiable
set smartindent
set hlsearch
set incsearch     " show search matches as you type
set autochdir
set nocompatible
set wrap
set guioptions-=e
" to not require save on buffers
set hidden
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set visualbell           " don't beep
set noerrorbells         " don't beep

let &titlestring = @%
set title

set number

set noswapfile

set backup

set fileformat=dos
"set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8

" This is to maximize the size of the window
au GUIEnter * simalt ~x

" ignore used by vimgrep
set wildignore+=**/target/**,**/node_modules/**,*.class,*.jar,*.iml

set pythonthreedll=python311.dll

call plug#begin()

" below are some vim plugin for demonstration purpose
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'dracula/vim'
Plug 'krischik/vim-backup'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'yegappan/mru'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'tpope/vim-fugitive'
Plug 'NikolayFrantsev/jshint2.vim'
Plug 'drmikehenry/vim-fontsize'
Plug 'mileszs/ack.vim'
""Plug 'lambdalisue/fern.vim'
Plug 'sonph/onehalf'
Plug 'sainnhe/edge'

Plug 'airblade/vim-rooter'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim'
"" Must always be last
""Plug 'ryanoasis/vim-devicons'

call plug#end()
 

" PlugInstall
" PlugUpdate
" PlugClean

" CONFIG MRU
let MRU_Max_Entries = 1000
let MRU_File='C:/users/felixg/vimfiles/mru.vim'
let g:autosave_extensions = '.backup'

" CONFIG NERDTREE
let g:NERDTreeWinSize = 70
" Store the bookmarks file
let NERDTreeBookmarksFile=expand("C:/Users/felixg/vimfiles/NERDTreeBookmarks.vim")
" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeStatusline = ''
let NERDTreeQuitOnOpen=3
let NERDTreeIgnore=['*\target\*','\~$']
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CONFIG sauces
let g:sauce_path = "C:/Users/felixg/vimfiles/sauces"

" CONFIG sessions
let g:session_autosave='no'
let g:session_autoload = 'no'
let g:session_lock_directory = "C:/Users/felixg/vimfiles/sessions"

" CONFIG vim-font-size
" <Leader><Leader>=    Begin 'font size' mode
" <Leader><Leader>+    Increment font size (by [count])
" <Leader><Leader>-    Decrement font size (by [count])
" <Leader><Leader>0    Revert to default font size

" CONFIG ultisnips
" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"


"======================== CONFIG dracula =====================================
"colorscheme dracula
"if (has("termguicolors"))
" set termguicolors
"endif
"set t_Co=256   " This is may or may not needed.
"set background=light

" ======================== Config half color theme ===========================
set t_Co=256
set cursorline
colorscheme edge
let g:edge_style = 'aura'
let g:airline_theme = 'edge'

" Run command set guifont?
set guifont=Lucida_Console:h14:cANSI:qDRAFT
"Config FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" Config Rooter
let g:rooter_patterns = ['=teamc']
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1

let g:ackprg = 'ag --nogroup --nocolor --column'


" backup plugin
let g:backup_directory='./.vim_backups'
let g:backup_purge=30

let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

"function! NERDTreeToggleInCurDir()
"if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
"exe ":NERDTreeClose"
"else
"exe ":NERDTree"
"endif
"endfunction

function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  elseif bufname('%')
    exe ":NERDTreeFind"
  else
    exe ":NERDTreeFind"
  endif
endfunction

