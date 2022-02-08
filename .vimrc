" ----------------------------------------------
"vim basic settings
" ----------------------------------------------
set number  
set nocompatible "設定をvimの設定にする
set whichwrap=b,s,h,l,[,],<,>,~ "左右の移動で行をまたいで移動
set backspace=indent,eol,start "vimでバックスペースを有効にする
set noundofile "vimでundoファイルを生成させない
set clipboard+=unnamed "clipboard有効化
" set clipboard=unnamedplus
set mouse= "mouse有効化 aで有効
set tabstop=4 "tabの幅を4に設定 デフォルトは8
set shiftwidth=4 "インデントを増やす、減らす時幅
set softtabstop=4 "tabを押されたときのスペース幅。tabstopと等しい場合、スペースがタブに置換される
set expandtab "スペースのみにする(タブに置換されないようにする)
" set smarttab 
set autoindent "行追加時にインデント幅を合わせる
set smartindent "C言語Likeな言語を編集する際、それっぽく字下げする
set foldmethod=manual "manual-> self  indent-> auto
set scrolloff=5 "スクロール時、行に余裕を持たせる
set ignorecase "検索時大文字小文字を気にしない
set cursorline "行ハイライト
set statusline+=%m "編集時に+マークを出現させる
set completeopt+=menuone,noinsert "lsp設定時追加
set splitright "画面を新規で開く際、右側に表示する
set autochdir "開いたファイルにディレクトリを移動する
set noswapfile "スワップファイルを作成しない"
let loaded_matchparen=1 "カッコの反対側のハイライトを消す
noremap <C-u> <C-w>
inoremap <silent> jj <ESC>
let mapleader = "\<Space>" 
"日本語の設定
inoremap <silent> っj <ESC><ESC>
"ESCの２回押手ハイライトを消去
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
filetype on "ファイルタイプを検出する
filetype plugin indent off "ファイルタイプに合わせたインデントを利用
autocmd FileType html setl expandtab tabstop=2 shiftwidth=2 softtabstop=2 "htmlのインデント幅を変更する
"elixir key map
imap >> \|><Space>
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
"font settings
set guifont=Cica:h16
set printfont=Cica:h12
set ambiwidth=double
" f1で.vimrcを開く
nmap <F2> :tabnew $MYVIMRC<CR>

" shiftで移動を楽にする
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $

" <space>+vで縦にスプリット
nnoremap <Space>v  :vs
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"表示行単位で移動する
nnoremap j gj
nnoremap k gk


" ----------------------------------------------
" vim plugの設定は以下
" ----------------------------------------------
call plug#begin()
Plug 'tpope/vim-surround'
" Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-quickrun' 
Plug 'Shougo/unite.vim' "統合インターフェース
Plug 'vim-airline/vim-airline' "ステータスバーカッコよくする
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' "vim-airlineでアイコン表示用
" --------lsp settigns---------
Plug 'prabirshrestha/vim-lsp' "lsp本体
Plug 'mattn/vim-lsp-settings' "mattnさんの、lspの設定が楽になるやつ
Plug 'prabirshrestha/asyncomplete.vim' "補完リスト表示
Plug 'prabirshrestha/asyncomplete-lsp.vim' "補完リストとlspの融合?
" Plug 'prabirshrestha/async.vim' "ultisnipsのために必要みたい
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
" ----------end lsp------------
Plug 'udalov/kotlin-vim' "kotlinの色つけ
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary' "コメントプラグイン
Plug 'mattn/emmet-vim' "htmlコーディング用
Plug 'easymotion/vim-easymotion' 
Plug 'elixir-lang/vim-elixir' " elixir for vim
Plug 'slashmili/alchemist.vim' " elixir for vim
Plug 'mhinz/vim-mix-format' " elixir for vim
Plug 'elzr/vim-json' " edit json file
Plug 'reireias/vim-cheatsheet' 
" Plug 'cohama/lexima.vim' "()を対で表示する
Plug 'tomasr/molokai'
" Plug 'tell-k/vim-browsereload-mac'
" Plug 'tpope/vim-markdown'
Plug 'skanehira/preview-markdown.vim'
" Plug 'kannokanno/previm'
Plug 'terryma/vim-multiple-cursors'
Plug 'severij/vadelma' "カラースキーマらしい、なんでインストールしたっけ...
Plug 'freeo/vim-kalisi' "これもカラースキーマ、インストール時するの忘れた...
Plug 'simeji/winresizer' "画面のリサイズができる
Plug 'LeafCage/yankround.vim'
Plug 'terryma/vim-expand-region'
Plug 'Yggdroot/indentLine'
Plug 'twitvim/twitvim' "twitter用
Plug 'LeafCage/vimhelpgenerator' "VimHelpGenetratorコマンドでヘルプファイル作る
Plug 'lambdalisue/fern.vim' "vim-jpでおすすめされた強力なファイラー
Plug 'lambdalisue/nerdfont.vim' "ファイラーのアイコン用
Plug 'lambdalisue/fern-renderer-nerdfont.vim' "ファイラーのアイコン用2
Plug 'lambdalisue/glyph-palette.vim'
Plug 'Mr-peipei/session.vim'
Plug 'Mr-peipei/worktimer.vim',{ 'branch': 'main' }
Plug 'cohama/lexima.vim' "カッコ閉じを自動にする
Plug 'lepture/vim-jinja' "jinja(djangoやflaskで使用するhtml書式)syntax
Plug 'tomasiser/vim-code-dark' "vimのカラースキーマ
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'mattn/vim-goimports'
call plug#end()


" ----------------------------------------------
" colorの設定は以下
" ----------------------------------------------
" colorscheme molokai
" colorscheme delek
" colorscheme kalisi
colorscheme codedark
syntax on
set t_Co=256
" set background=light
" syntax enable





" ----------------------------------------------
" yankroundの設定は以下
" Unite yankroundで過去のyank履歴が閲覧可能
" ----------------------------------------------
" nmap p <Plug>(yankround-p)
" xmap p <Plug>(yankround-p)
" nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-o> <Plug>(yankround-next)


" ----------------------------------------------
" FZFあたりの設定は以下
" ----------------------------------------------
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>x :Commands<CR>
nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>a :Ag<CR>
nnoremap <Leader>k :bd<CR>
command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})
nnoremap <Leader>r :FZFMru<CR>




" ----------------------------------------------
" Unite.vim
" ----------------------------------------------
let g:unite_enable_start_insert=1 " 入力モードで開始する
let g:unite_enable_ignore_case = 1 " 大文字小文字を区別しない
let g:unite_enable_smart_case = 1
" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" ディレクトリを指定してgrep検索
nnoremap <silent> ,dg  :<C-u>Unite grep -buffer-name=search-buffer<CR>
" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W><CR>
" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>
" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif



" ----------------------------------------------
" easy-motionの設定は以下
" ----------------------------------------------
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)



" Twitter settings
let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1
let twitvim_count = 40


" 'elzr/vim-json' settings
let g:vim_json_syntax_conceal=0
" :%!jq '.' is format commnad


"cheatsheetのファイル場所を設定
let g:cheatsheet#cheat_file='/Users/murakamishumpei/Documents/vim/cheatsheet.md'


"vim-markdownの設定
let g:previm_disable_default_css=1
let g:previm_custome_css_path = '/Users/mattn/public_html/style.css'


"vim-mix-format のプラグイン有効化
" command ":MixFormat
let g:mix_format_on_save = 1


" vim airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_thme = 'codedark'
" let g:airline_theme = 'molokai'
" let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1

" ----------------------------------------------
"vim-lsp settings
" ----------------------------------------------
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    " autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

" 2021-07-23 delete-test
""asyncomplete settings
""補完時enterで改行しない
" inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>"

"PreviewMarkdown
let g:preview_markdown_vertical = 1
let g:preview_markdown_auto_update = 1
nnoremap <Leader>md :PreviewMarkdown<CR>

"session.vim settins
let g:session_path = '/Users/murakamishumpei/Documents/vim'

" ----------------------------------------------
"fern.vim
" ----------------------------------------------
"toggleで切り替えられるようにする
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
let g:fern#renderer = 'nerdfont'
"fernのアイコンに色をつける
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END


"muilticursor
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Japanase settings
inoremap <silent> っｊ <ESC>
function! Fcitx2en()
    let s:input_status = system("fcitx-remote")
    if s:input_status == 2
        let l:a = system("fcitx-remote -c")
    endif
endfunction

set ttimeoutlen=150
autocmd InsertLeave * call Fcitx2en()

"emmet settings
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" ----------------------------------------------
"vim-surround
" ----------------------------------------------
"for django settigns
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"
nmap S <Plug>VSurround

if has('unix') 
endif
if has('mac') 
endif
if has('unix') || has ('mac')
endif
if has('win32') || has ('win64')
endif

" ----------------------------------------------
"go settings
" ----------------------------------------------
" let g:goimports_simplify = 1
let g:lsp_settings = {
  \   'gopls': {
  \     'initialization_options': {
  \       'usePlaceholders': v:true,
  \     },
  \   },
  \ }
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)
" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1


