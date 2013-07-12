 	
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
"basic setting
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
sy on
set t_Co=256
colorscheme molokai
set nu
set encoding=utf-8
set fileencoding=utf-8
set cursorline

"#tab
set laststatus=2
set expandtab
set shiftwidth=2
set softtabstop=4
set tabstop=2

"#search
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

"#indent
set smartindent

"#visualize
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

"#cursor
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

"#permute
set wildmode=list:longest


"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
"my command
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
inoremap <C-h>  <C-o><Left>
inoremap <C-l>  <C-o><Right>
inoremap <C-j>  <C-o><Down>
inoremap <C-k>  <C-o><UP>
inoremap <C-x>x <C-o>x
inoremap <C-x>w <C-o>dw
inoremap <C-x>i <Esc>
inoremap <C-u> <C-o>u
inoremap <C-r> <C-o><C-r>
inoremap <C-y> <C-o>yy
inoremap <C-d> <C-o>dd
inoremap <C-p> <C-o>p
inoremap <C-e> <End>
inoremap <C-a> <Home>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap < <><Left>

nnoremap ; :
nnoremap <C-i> :nohlsearch<CR><Esc>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <Return> o<Esc>
nmap ,ee :e ++enc=euc-jp<CR>
nmap ,uu :e ++enc=utf-8<CR>

vnoremap <C-x>i <Esc>
vnoremap <C-e> <End>
vnoremap <C-a> <Home>

ab _err error_log(var_export(, true));
ab _con console.log

"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
"bundle setting
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'typescript-vim'
Bundle 'vim-coffee-script'
filetype plugin indent on

"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
"neobundle setting
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
filetype plugin indent off
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neobundle.vim'
" solarized カラースキーム
NeoBundle 'altercation/vim-colors-solarized'
" mustang カラースキーム
NeoBundle 'croaker/mustang-vim'
" wombat カラースキーム
NeoBundle 'jeffreyiacono/vim-colors-wombat'
" jellybeans カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
" lucius カラースキーム
NeoBundle 'vim-scripts/Lucius'
" zenburn カラースキーム
NeoBundle 'vim-scripts/Zenburn'
" mrkn256 カラースキーム
NeoBundle 'mrkn/mrkn256.vim'
" railscasts カラースキーム
NeoBundle 'jpo/vim-railscasts-theme'
" pyte カラースキーム
NeoBundle 'therubymug/vim-pyte'
" molokai カラースキーム
NeoBundle 'tomasr/molokai'

" カラースキーム一覧表示に Unite.vim を使う
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

filetype indent plugin on
syntax on
