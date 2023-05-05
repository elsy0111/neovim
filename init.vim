" -------------------------------------------Vim-Plug-----------------------------------------
"// PLUGIN SETTINGS
call plug#begin('/home/elsy/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'overcache/NeoSolarized'
Plug 'Yggdroot/indentLine'

Plug 'tribela/vim-transparent'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-commentary'
Plug 'rcarriga/nvim-notify'
Plug 'MunifTanjim/nui.nvim'

" Plug 'nvim-treesitter/nvim-treesitter'
Plug 'vim-jp/syntax-vim-ex'

call plug#end()

lua << EOF
vim.notify = require("notify")
EOF

" NERDTree SETTINGS
nmap <C-e> :NERDTreeToggle<CR>

" Airline SETTINGS
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_solarized'
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab

" NeoSolarized
colorscheme NeoSolarized
let g:neosolarized_contrast = "high"
let g:neosolarized_visibility = "high"

" SPLIT BORDER SETTINGS
hi VertSplit cterm=none

"--------------------------------------------Vim-Plug-----------------------------------------

"--------------------------------------------Setting------------------------------------------
"行番号を表示
set number
"改行時に自動でインデントする
set autoindent
"タブを何文字の空白に変換するか
set tabstop=4
"自動インデント時に入力する空白の数
set shiftwidth=4
set clipboard+=unnamedplus
" True Color対応
set termguicolors
"ターミナルのタブ名に現在編集中のファイル名を設定
set title
"括弧入力時の対応する括弧を表示
set showmatch
"文字コード
set encoding=utf-8
set pumblend=10
" 現在のウィンドウの半透明度を指定する。
set winblend=10

"--------------------------------------------Setting------------------------------------------


"-------------------------------------------Set-Alias-----------------------------------------

" Run Python
nmap <F5> :w<CR>:!python3 %<CR>
imap <F5> <Esc>:w<CR>:!python3 %<CR>
nmap <S-p> :25<CR><S-v><S-g>y


" comment out
nmap <C-_> gcc
vmap <C-_> gc
imap <C-_> <Esc>gcca

" No highlight
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" Enterで確定
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" <Tab>で次、<S+Tab>で前
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-TAB>" " "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

"nmap <S-z> i$<Esc>
"imap <S-z> $
"nmap <A-b> a<br><Esc>
"imap <A-b> <br>
"imap <S-CR> <Esc>:w<CR>:!python3 %<CR>


"-------------------------------------------Set-Alias-----------------------------------------
