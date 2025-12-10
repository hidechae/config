" settings
set number
" set cursorcolumn
set scrolloff=5

" tab
set tabstop=2
set shiftwidth=2
set expandtab

" cursor
set guicursor=n-v-c-i:block
set mouse=

" file types
autocmd BufRead,BufNewFile *.fish set filetype=sh


" plugins
call plug#begin('~/.vim/plugged')
" utility
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'bronson/vim-trailing-whitespace'

" style
"Plug 'bronson/vim-trailing-whitespace'
Plug 'flazz/vim-colorschemes'
Plug 'skanehira/preview-markdown.vim'

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/vim-goimports'

" kotlin
Plug 'udalov/kotlin-vim'
call plug#end()

"colorscheme wombat256
"colorscheme badwolf
colorscheme gruvbox

" goimports
" Plugin doesn't work, so set BufWritePre event manually
autocmd BufWritePre *.go call goimports#AutoRun()

" Fix trailing space on save
" autocmd BufWritePre <buffer> FixWhitespace


" fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   '/usr/local/bin/rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

nnoremap <silent> ff  :Files<CR>
nnoremap <silent> fgs :GFiles?<CR>
nnoremap <silent> fm  :History<CR>
nnoremap <silent> fc  :Colors<CR>
nnoremap <silent> <C-g> :Rg


" nerdtree
nnoremap <C-n><C-n> :NERDTreeToggle<CR>
nnoremap <C-n><C-f> :NERDTreeFind<CR>


" markdown
nnoremap <silent> md :PreviewMarkdown<CR>


" no hilight
map <silent> <ESC><ESC> :noh<CR>


" 背景透過
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
highlight StatusLine ctermbg=none cterm=bold
