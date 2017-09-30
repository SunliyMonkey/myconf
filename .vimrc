set nu
colorscheme torte
syntax on
set ts=4 sw=4
set expandtab
"set cc=80
set nu
set nocompatible              " be iMproved, required
set hlsearch
filetype off                  " required
set cursorline
highlight CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE guibg=NONE guifg=NONE
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-airline/vim-airline'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
"Plugin 'kien/ctrlp.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'
"Plugin 'vim-scripts/OmniCppComplete'
"Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'orzhang/cscope_maps'
"Plugin 'darthmall/vim-vue'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Air-line config
" let g:airline_theme="molokai" 
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tagbar#enabled = 1

let g:airline#extensions#syntastic#enabled = 1

"config for Plugin 'scrooloose/syntastic'"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <leader>[ :bp<CR>
nnoremap <leader>] :bn<CR>
nnoremap <leader>0 :BufExplorer<CR>
"nmap <leader>l :bnext<CR>
"nmap <leader>h :bprevious<CR>
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>

" Hot keys
map <C-w><C-t> :TagbarToggle<CR>
map <C-w><C-y> :NERDTreeToggle<CR>
map <C-]> :YcmCompleter GoToDefinition<CR>
set nocscopeverbose
set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-
"
set completeopt=longest,menu
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t\+\|\t\+\zs \+/
