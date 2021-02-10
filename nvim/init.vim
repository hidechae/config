" settings
set number
"set cursorcolumn
set scrolloff=5


" file types
autocmd BufRead,BufNewFile *.fish set filetype=sh


" plugins
call plug#begin('~/.vim/plugged')
" utility
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

" style
Plug 'bronson/vim-trailing-whitespace'
Plug 'flazz/vim-colorschemes'
Plug 'skanehira/preview-markdown.vim'

" specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/vim-goimports'
call plug#end()

colorscheme wombat256


" goimports
" Plugin doesn't work, so set BufWritePre event manually
autocmd BufWritePre *.go call goimports#AutoRun()

" Fix trailing space on save
autocmd BufWritePre <buffer> FixWhitespace


" fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

nnoremap <silent> ff  :Files<CR>
nnoremap <silent> fgs :GFiles?<CR>
nnoremap <silent> fm  :History<CR>
nnoremap <silent> fc  :Colors<CR>
nnoremap <silent> <C-g> :Rg


" nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>


" markdown
nnoremap <silent> md :PreviewMarkdown<CR>


" no hilight
map <silent> <ESC><ESC> :noh<CR>
