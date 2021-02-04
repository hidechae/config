set number

autocmd BufRead,BufNewFile *.fish set filetype=sh

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'skanehira/preview-markdown.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" color scheme
Plug 'flazz/vim-colorschemes'
call plug#end()

colorscheme wombat256

" fzf
nnoremap <silent> ff  :Files<CR>
nnoremap <silent> fgs :GFiles?<CR>
nnoremap <silent> fm  :History<CR>
nnoremap <silent> fc  :Colors<CR>

" markdown
nnoremap <silent> md :PreviewMarkdown<CR>
