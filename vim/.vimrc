set nocompatible
filetype off

set autoread

set wildmenu
set wildignore=*.o,*~,*.pyc

set ruler

syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'whatyouhide/vim-gotham'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'terryma/vim-expand-region'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

colorscheme gotham

set laststatus=2
let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ""
let g:airline_right_sep = ""

set hidden

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

let g:ctrlp_show_hidden = 1

function! ClipboardYank()
	  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
	  let @@ = system('xclip -o -selection clipboard')
endfunction

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

map <A-CR> :terminal<CR>

nnoremap <A-,> <C-w><
nnoremap <A-.> <C-w>>
nnoremap <A--> <C-w>-
nnoremap <A-=> <C-w>+
