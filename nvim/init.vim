" settings
set number
set cursorcolumn


" file types
autocmd BufRead,BufNewFile *.fish set filetype=sh


" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'skanehira/preview-markdown.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/vim-goimports'
Plug 'flazz/vim-colorschemes'
call plug#end()

colorscheme wombat256

" goimports
" Plugin doesn't work, so set BufWritePre event manually
autocmd BufWritePre *.go call goimports#AutoRun()


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


" markdown
nnoremap <silent> md :PreviewMarkdown<CR>


" no hilight
map <silent> <ESC><ESC> :noh<CR>
