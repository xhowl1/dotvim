execute pathogen#infect()

filetype plugin indent on
syntax on

" open NERDTree automaticall when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" map NERDTree toggle
nmap <F3> :NERDTreeToggle<CR>

" add line numbers
set number

" show hidden files
let NERDTreeShowHidden = 1

" automatically delete buffer when file is deleted in NERDTree
let NERDTreeAutoDeleteBuffer = 1

" always show status line
set laststatus=2

" Tern
"let g:tern_show_argument_hits='on_hold'
"let g:tern_map_keys=1

" Set tab to 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" show leading space and eol char
set list
set listchars=tab:>\ 

" vim-javascript
" jsdocs
let g:javascript_plugin_jsdoc = 1

