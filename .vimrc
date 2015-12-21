" .vimrc based on - Learn Vimscript the Hard Way by Steve Losh
" @author: German R. Gomez Urbina

" Make vimrc secure
:set exrc
:set secure

" Set number lines
:set number numberwidth=5
"  Enable text wrap-around
:set wrap
" Enable automatic tabbing
:set shiftround
:set matchtime=5

" Enable autoindent
:set autoindent

" Set column width colour to determine how long the line is
:set colorcolumn=128
:highlight ColorColumn ctermbg=darkgray

" Mapping keys
" Set leader and localleader
:let mapleader = "-"
:let maplocalleader = ","
" Delete current line, then paste it below
:noremap <leader><leader> ddp
" Delete current line, paste it above
:noremap _ ddkkp
" Convert current word to uppercase when in insert mode
:inoremap <leader>u  <esc>veUeli
" Convert current word to uppercase when in normal mode
:nnoremap <leader>u veUel
" Editing vimrc file on the fly
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Sourcing vimrc on the fly
:nnoremap <leader>sv :source $MYVIMRC<cr>
" Surround word with double quotes
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Surround word with single quotes
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" Wrap visually selected text with doubles quotes
:vnoremap <leader>" di"<esc>pa"<esc> 
" Wrap visually selected text with single quotes
:vnoremap <leader>' di'<esc>pa'<esc>

" Abbreviations
" My-email
:iabbrev @@ grgomezu@gmail.com

" Auto-commands
:autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
:autocmd BufNewFile, BufRead *.csc nnoremap <buffer> <localleader>c I#<esc>

