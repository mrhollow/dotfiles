"set bg=light
" Show line numbers
set number
" set relativenumber
set ts=4
set sw=4
" Tabs expanded to spaces
set expandtab
" How many tabs possible
set tabpagemax=128
" Set hidden buffers
set hidden
" AutoIndent
set ai
" Highlight search
set hlsearch
" Show position in search
set ruler
" Incremental search
set incsearch
" Spell check
"set spell
" Set tab completion like bash
set wildmode=longest,list,full
set wildmenu
" Set backspace to; indent,eol,start
set backspace=indent,start
" Highlight column
set colorcolumn=80
" Display tabs/space
" Enter the middle-dot by pressing Ctrl-k then .M
set list lcs=tab:»\ ,trail:°
" set no bell
set noeb vb t_vb=
" Enable status line
" set laststatus=2

" ========================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" CommandT
" Plugin 'wincent/command-t'

" fuzzy search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Motion on speed
Plugin 'easymotion/vim-easymotion'

" Preview replace
Plugin 'osyo-manga/vim-over'

" Syntax checker
Plugin 'scrooloose/syntastic'

" Simple auto completion
Plugin 'AutoComplPop'

" Status bar
" Plugin 'powerline/powerline'

" "" " The following are examples of different formats supported.
" "" " Keep Plugin commands between vundle#begin/end.
" "" " plugin on GitHub repo
" "" Plugin 'tpope/vim-fugitive'
" "" " plugin from http://vim-scripts.org/vim/scripts.html
" "" Plugin 'L9'
" "" " Git plugin not hosted on GitHub
" "" Plugin 'git://git.wincent.com/command-t.git'
" "" " git repos on your local machine (i.e. when working on your own plugin)
" "" Plugin 'file:///home/gmarik/path/to/plugin'
" "" " The sparkup vim script is in a subdirectory of this repo called vim.
" "" " Pass the path to set the runtimepath properly.
" "" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" "" " Install L9 and avoid a Naming conflict if you've already installed a
" "" " different version somewhere else.
" "" Plugin 'ascenator/L9', {'name': 'newL9'}

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
" Put your non-Plugin stuff after this line
" ========================


" Match all whitespace, tabs, and over eighty
" map <F2> <Esc>:highlight WhiteSpace ctermbg=green guibg=green<CR>:highlight Tab ctermbg=blue guibg=blue<CR>:highlight OverEighty ctermbg=blue guibg=blue<CR>:if exists("_0001")<CR>:call matchdelete(_0001)<CR>:unlet _0001<CR>:endif<CR>:if exists("_0002")<CR>:call matchdelete(_0002)<CR>:unlet _0002<CR>:endif<CR>:if exists("_0003")<CR>:call matchdelete(_0003)<CR>:unlet _0003<CR>:endif<CR>:let _0001 = matchadd("WhiteSpace", '\s\+$')<CR>:let _0002 = matchadd("Tab", '\t')<CR>:let _0003 = matchadd("OverEighty", '\%>80v.\+')<CR><Esc>
" Unmatch
" map <F3> <Esc>:call matchdelete(_0001)<CR>:unlet _0001<CR>:call matchdelete(_0002)<CR>:unlet _0002<CR>:call matchdelete(_0003)<CR>:unlet _0003<CR><Esc>

map <F2> <Esc>:tabnew %<CR>gT <C-o>gt
map <F3> <Esc>:set syntax=c<CR>

" Load session, "cp -b ~/.gvim_sess.backup ~/.gvim_sess" if you meant to
" hit <F5>
map <F4> <Esc>:!cp -b ~/.gvim_sess ~/.gvim_sess.backup<CR><Esc>:mksession! ~/.gvim_sess<CR><Esc>
" Load session, "cp -b ~/.gvim_sess.load.backup ~/.gvim_sess" if you meant to
" hit <F4>
map <F5> <Esc>:mksession! ~/.gvim_sess.load.backup<CR><Esc>:source ~/.gvim_sess<CR><Esc>
"map <F4> <Esc>:set list<CR><Esc>
"map <F5> <Esc>:set nolist<CR><Esc>
" Spell checking
map <F6> <Esc>:set spell<CR><Esc>
" No spell checking
map <F7> <Esc>:set nospell<CR><Esc>
" Open nerd tree
map <F8> <Esc>:NERDTree<CR><Esc>
" Close nerd tree
"map <F9> <Esc>:NERDTreeClose<CR><Esc>
" Alter tabs for C style
"map <F6> <Esc>:set ts=8 sw=8 noexpandtab<CR><Esc>
" Back to standard
"map <F7> <Esc>:set ts=4 sw=4 expandtab<CR><Esc>
"
" Tags plugin
"  let Tlist_Ctags_Cmd="/usr/bin/ctags"
"  let Tlist_WinWidth=50
"  let Tlist_GainFocus_On_ToggleOpen = 1
"  let Tlist_Process_File_Always = 1
"  map <F8> <Esc>:TlistToggle<cr><Esc>
"  map <F9> <Esc>:TlistAddFilesRecursive . *.c *.cpp *.py<cr><Esc>
"  map <F10> <Esc>:TlistAddFilesRecursive . *.c *.cpp *.py
map <F9> <Esc>:TlistToggle<cr><Esc>
map <F10> <Esc>:TlistAddFilesRecursive . *.c *.cpp *.py<cr><Esc>
"map <F11> <Esc>:TlistAddFilesRecursive . *.c *.cpp *.py

" Make page up and down more reasonable
map <C-k> <C-b>
map <C-j> <C-f>

" Copy the file name/full_path_to_file to the clipboard 
nmap \cs <Esc>:let @*=expand("%")<CR><Esc>
nmap \cl <Esc>:let @*=expand("%:p")<CR><Esc>

" 'quote' a word
" nnoremap '' :silent! normal mpea'<Esc>bi'<Esc>`pl<Esc><Esc>
nnoremap '' :silent! normal mpbi'<Esc>ea'<Esc>`pl<Esc><Esc>
" double "quote" a word
nnoremap "" :silent! normal mpbi"<Esc>ea"<Esc>`pl<Esc><Esc>
" remove quotes from a word
nnoremap \rq :silent! normal mpeld bhd `ph<CR><Esc><Esc>
" easy deal with buffers
nnoremap gb :ls<CR>:b<Space>
nnoremap gbd :ls<CR>:bd<Space>
" Alternate escape
inoremap jj <ESC>

"colorscheme morning
colorscheme desert
"colorscheme evening
syntax enable

" Look for ctags here, and search upward.
set tags=tags;/
"set tags=tags
"set tags+=/work/tags

"cscope add /work/cscope.out
"cscope add /work/pycscope.out

" C IDE
filetype plugin on
filetype plugin indent on

" Temporary
"set ic

" Set mouse to all
set mouse=a


" Tags plugin
"  let Tlist_Ctags_Cmd="/usr/bin/ctags"
"  let Tlist_WinWidth=50
"  let Tlist_GainFocus_On_ToggleOpen = 1
"  let Tlist_Process_File_Always = 1
"  map <F8> <Esc>:TlistToggle<cr><Esc>
"  map <F9> <Esc>:TlistAddFilesRecursive . *.c *.cpp *.py<cr><Esc>
"  map <F10> <Esc>:TlistAddFilesRecursive . *.c *.cpp *.py

":autocmd VimEnter * if argc() == 0 | source ~/.gvim_sess | endif
":autocmd VimLeave * mksession! ~/.gvim_sess

" Anton's code
set cscopequickfix=s-,g-,t-,f-,i-,c-,d-,e-

" buffer and Tagbar navigation
"nnoremap <leader>g :TagbarOpenAutoClose<CR>

" Leader related convinience shortcuts
let mapleader=" "
"nnoremap <leader>q :q<CR>
nnoremap <leader>g gt<Esc>
nnoremap <leader>G gT<Esc>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>c :copen 20<CR>
nnoremap <leader>C :cclose<CR>
nnoremap <leader><TAB> <C-w><C-w>
"nnoremap <leader>y :cd %:p:h<CR>
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>r :e<CR>
nnoremap <leader>o :OverCommandLine<CR>

" Map <leader> Ctrl+y and Ctrl+p to yank to, and paste from the system clip-board
" nnoremap <leader><C-y> "+y
" vnoremap <leader><C-y> "+y
" nnoremap <leader><C-p> "+p
" vnoremap <leader><C-p> "+p


