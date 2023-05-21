" -------------------------------------------Vim-Plug-----------------------------------------
" // PLUGIN SETTINGS
call plug#begin('/home/elsy/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'overcache/NeoSolarized'
Plug 'Yggdroot/indentLine'

Plug 'xiyaowong/transparent.nvim'

Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim'
Plug 'MunifTanjim/nui.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'vim-jp/syntax-vim-ex'

call plug#end()

" NeoSolarized
colorscheme NeoSolarized
let g:neosolarized_contrast = "high"
let g:neosolarized_visibility = "high"


" True Color
set termguicolors


" NERDTree SETTINGS
nmap <C-e> :NERDTreeToggle<CR>

nmap <C-h> :TransparentToggle<CR>

" Airline SETTINGS
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_solarized'
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab


" SPLIT BORDER SETTINGS
hi VertSplit cterm=none

"--------------------------------------------Vim-Plug-----------------------------------------

"--------------------------------------------Setting------------------------------------------

" Line Number
set number
" Auto Indent
set autoindent
" Auto Indent Length
set shiftwidth=4
" Tab Length
set tabstop=4
" Clipboard
set clipboard+=unnamedplus
" Tab Title <- File Name
set title
" Show Pair Highlight
set showmatch
" Encode
set encoding=utf-8
" " Coc Suggest Transparent
" set pumblend=40
" " Coc Floating Window Transparent
" set winblend=40

"--------------------------------------------Setting------------------------------------------


"-------------------------------------------Set-Alias-----------------------------------------

" Run Python
nmap <F5> :w<CR>:!python3 %<CR>
imap <F5> <Esc>:w<CR>:!python3 %<CR>
" nmap <F5> :w<CR>:!gcc % && ./a.out<CR>
" imap <F5> <Esc>:w<CR>:gcc % && ./a.out<CR>
nmap <S-p> :25<CR><S-v><S-g>y

" comment out
nmap <C-_> gcc
vmap <C-_> gc
imap <C-_> <Esc>gcca

" No highlight
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" Suggest Select Enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Suggest Select Tab
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


"-------------------------------------------Set-Alias-----------------------------------------


" lua << EOF
" require'nvim-treesitter.configs'.setup {
"     ensure_installed = 'all',
"     highlight = {
"         enable = true,
"         additional_vim_regex_highlighting = false,
"     },
" }
" EOF


