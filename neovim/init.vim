
set number  
inoremap <silent> jj <ESC>
let mapleader = "\<Space>" 
"日本語の設定
inoremap <silent> っj <ESC><ESC>
"ESCの２回押手ハイライトを消去
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

" shiftで移動を楽にする
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $

"表示行単位で移動する
nnoremap j gj
nnoremap k gk


call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary' "コメントプラグイン
Plug 'tomasiser/vim-code-dark' "vimのカラースキーマ
Plug 'lambdalisue/fern.vim' "vim-jpでおすすめされた強力なファイラー
Plug 'lambdalisue/nerdfont.vim' "ファイラーのアイコン用
Plug 'lambdalisue/fern-renderer-nerdfont.vim' "ファイラーのアイコン用2
call plug#end()

colorscheme codedark
syntax on
set t_Co=256

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
