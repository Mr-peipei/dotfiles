filetype off
filetype plugin indent off

set number
set nocompatible
set whichwrap=b,s,h,l,[,],<,>,~
set backspace=indent,eol,start
set undofile
set clipboard+=unnamed
set mouse=
set tabstop=1
set shiftwidth=4
set expandtab
set autoindent
set smarttab
set smartindent
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> <C-o>15<Right>
nmap <silent> <S-Tab> 15<Left>
vmap <silent> <S-Tab> <C-o>15<Left>
" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
NeoBundleFetch 'Shougo/neobundle.vim'
 " ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'open-browser.vim'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'severij/vadelma'
NeoBundle 'freeo/vim-kalisi'
NeoBundle 'simeji/winresizer'
" My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

call plug#begin()
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'
call plug#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

"molokoi
"colorscheme molokai

"syntax on

"set t_Co=256

"open-browser.vim
let g:netrw_nogx=1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

"browsereload
let g:returnApp = "iTerm"
nmap <Space>bc :ChromeReloadStart<CR>
nmap <Space>bC :ChromeReloadStop<CR>

"markdown
let g:previm_disable_default_css=1
let g:previm_custome_css_path = '/Users/mattn/public_html/style.css'


"neocomplete
"起動時に有効
let g:neocomplete#enable_at_startup=1
"ポップアップメニューで表示される候補の数
let g:neocomplete#max_list=50
"キーワードの長さ、デフォルトで80
let g:neocomplete#max_keyword_width = 80
let g:neocomplete#enable_ignore_case = 1
highlight Pmenu ctermbg = 6
highlight PmenuSel ctermbg = 5
highlight PmenuSbar ctermbg=0
inoremap <expr><CR> pumvisible()?neocomplete#close_popup():"<CR>"

"yankround
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-o> <Plug>(yankround-next)

" like Spacemacs
let mapleader = "\<Space>"

nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>x :Commands<CR>
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>a :Ag<CR>
nnoremap <Leader>k :bd<CR>
command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})
nnoremap <Leader>r :FZFMru<CR>

"nerdtree
nnoremap <silent><C-t> :NERDTreeToggle<CR>

"coloro
set t_Co=256
colorscheme kalisi
set background=light
"syntax on

"NERDTreeToggle
nnoremap <silent><C-t> :NERDTreeToggle<CR>

syntax enable
set background=light "デフォルトのbackgroundのカラーテーマを設定。lightの場合はlight

autocmd FileType html setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
filetype plugin indent on

"vim-mix-format"
let g:mix_format_on_save = 1
