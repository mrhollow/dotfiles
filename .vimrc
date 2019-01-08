"set bg=light
" Show line numbers
set number
" set relativenumber
set ts=4
set sw=4
" Tabs expanded to spaces
"set expandtab
set noexpandtab
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
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v', 100)
" Display tabs/space
" Enter the middle-dot by pressing Ctrl-k then .M
" See the digraphs by :digraphs
set list lcs=tab:»\ ,trail:°
" set no bell
set noeb vb t_vb=
" Enable status line
set laststatus=2

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

" Status line enhancements
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'itchyny/lightline.vim'
"Plugin 'edkolev/tmuxline.vim'

" Git
Plugin 'tpope/vim-fugitive'

" Vim ack-grep integration
Plugin 'toranb/vim-ack'

" Rust integration
Plugin 'rust-lang/rust.vim'

" Status bar
" Plugin 'powerline/powerline'

" Undo
Plugin 'mbbill/undotree'

" Wiki
Plugin 'vimwiki/vimwiki'

" CTags integration
Plugin 'vim-scripts/taglist.vim'

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

map <F2> <Esc>:UndotreeToggle<CR>
map <F3> <Esc>:set syntax=c<CR>
" Load session, "cp -b ~/.gvim_sess.backup ~/.gvim_sess" if you meant to
" hit <F5>
map <F4> <Esc>:!cp -b ~/.gvim_sess ~/.gvim_sess.backup<CR><Esc>:mksession! ~/.gvim_sess<CR><Esc>
" Load session, "cp -b ~/.gvim_sess.load.backup ~/.gvim_sess" if you meant to
" hit <F4>
map <F5> <Esc>:mksession! ~/.gvim_sess.load.backup<CR><Esc>:source ~/.gvim_sess<CR><Esc>
" Spell checking
map <F6> <Esc>:set spell<CR><Esc>
" No spell checking
map <F7> <Esc>:set nospell<CR><Esc>
" Open nerd tree
map <F8> <Esc>:NERDTree<CR><Esc>
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

" Make page up and down more reasonable
map <C-k> <C-b>
map <C-j> <C-f>

"colorscheme morning
colorscheme desert
"colorscheme evening
syntax enable

" Look for ctags here, and search upward.
set tags=tags;/
cscope add cscope.out

" C IDE
filetype plugin on
filetype plugin indent on

" Set mouse to all
set mouse=a
set ttymouse=xterm

" Anton's code
set cscopequickfix=s-,g-,t-,f-,i-,c-,d-,e-

" Leader related convenience shortcuts
let mapleader=" "

" 'quote' a word
" nnoremap '' :silent! normal mpea'<Esc>bi'<Esc>`pl<Esc><Esc>
"nnoremap '' :silent! normal mpbi'<Esc>ea'<Esc>`pl<Esc><Esc>
nnoremap '' diw<Esc>i''<Esc>hpb<Esc>
nnoremap <leader>'' I'<Esc>A'<Esc>I<Esc>
" double "quote" a word
"nnoremap "" :silent! normal mpbi"<Esc>ea"<Esc>`pl<Esc><Esc>
nnoremap "" diw<Esc>i""<Esc>hpb<Esc>
nnoremap <leader>"" I"<Esc>A"<Esc>I<Esc>
" remove quotes from a word
nnoremap <leader>rq :silent! normal mpeld bhd `ph<CR><Esc><Esc>

" easy deal with buffers
nnoremap gb :ls<CR>:b<Space>
nnoremap gbd :ls<CR>:bd<Space>
" Alternate escape
inoremap jj <ESC>
"nnoremap <leader>q :q<CR>
nnoremap <leader>a :Ack<Space>
" yank word under cursor, and ack grep for it
nnoremap <leader>aa yiw :Ack<Space><C-r>"

nnoremap <leader>g gt<Esc>
nnoremap <leader>G gT<Esc>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" c: Find functions calling this function
" d: Find functions called by this function
" e: Find this egrep pattern
" f: Find this file
" g: Find this definition
" i: Find files #including this file
" s: Find this C symbol
" t: Find this text string
nnoremap <leader>csc yiw<CR>:cs find c <C-r>"<CR>
nnoremap <leader>csd yiw<CR>:cs find d <C-r>"<CR>
nnoremap <leader>cse yiw<CR>:cs find e <C-r>"<CR>
nnoremap <leader>csf yiw<CR>:cs find f <C-r>"<CR>
nnoremap <leader>csg yiw<CR>:cs find g <C-r>"<CR>
nnoremap <leader>csi yiw<CR>:cs find i <C-r>"<CR>
nnoremap <leader>css yiw<CR>:cs find s <C-r>"<CR>
nnoremap <leader>cst yiw<CR>:cs find t <C-r>"<CR>

nnoremap <leader>c :copen 20<CR>
nnoremap <leader>C :cclose<CR>
nnoremap <leader><TAB> <C-w><C-w>

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
" copy file name into system buffer
nnoremap <leader>yf <Esc>:let @*=expand("%")<CR><Esc>
" copy full file path into system buffer
nnoremap <leader>yp <Esc>:let @*=expand("%:p")<CR><Esc>
" quit all
nnoremap <leader>qa <Esc>:qa!<CR>

nnoremap mf :move +1<CR>
nnoremap mj :move +1<CR>
nnoremap <leader>= :move +1<CR>
nnoremap mb :move -2<CR>
nnoremap mk :move -2<CR>
nnoremap <leader>- :move -2<CR>

" Maximize/minimize panes
nnoremap <leader>m <C-w>_ <C-w>\|
nnoremap <leader>M <C-w>=

vnoremap <leader>n :norm<Space>
nnoremap <leader>cd <Esc>:cd %:h<CR>:echo "Changed dir to:" expand("%:p:h")<CR>
nnoremap <leader>r :cs add cscope.out<CR>:source ~/.vimrc<CR>:e<CR>
nnoremap <leader>o :OverCommandLine<CR>
nnoremap <leader>t :FZF<CR>
nnoremap <leader>f :find<Space>
nnoremap <leader>/ /XXXXX<CR>
nnoremap <leader>j <C-w>j<CR>
nnoremap <leader>k <C-w>k<CR>
nnoremap <leader>h <C-w>h<CR>
nnoremap <leader>l <C-w>l<CR>
" This was meant as a fix to the can't find file in path, but it doesn't
" work... hmmm...
nnoremap <leader>gf <Esc>:cd %:h<CR>:cd ..<CR>gf

" vimrc editing + save all
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>wa :bufdo :w<CR>
nnoremap <leader>ra :bufdo :e<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>:echo ".vimrc reloaded"<CR>

" Open old files in a separate browseable window; can't figure out how to make
" a shortcut to this, it keeps reading in...
" :new +setl\ buftype=nofile | 0put =v:oldfiles | nnoremap <buffer> <CR> :e <C-r>=getline('.')<CR><CR>

"let airline_section_b = '%{strftime("%c")}'
"let airline_section_y = 'BN: %{bufnr("%")}'
"
"hi Visual term=reverse cterm=reverse guibg=Grey
