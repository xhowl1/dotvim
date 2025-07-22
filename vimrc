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

" increase NERDTree width
let g:NERDTreeWinSize=60

" always show status line
set laststatus=2

" Tern
"let g:tern_show_argument_hits='on_hold'
"let g:tern_map_keys=1

" Set tab to 4 spaces
set tabstop=2 shiftwidth=2 expandtab

" show leading space and eol char
set list
set listchars=tab:>\ 


" Set git nerdtree symbols
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
\ }  

" Set powerline fonts (for arrows)
let g:airline_powerline_fonts = 1

" Enable tab line
let g:airline#extensions#tabline#enabled = 1

"Show whitespaces
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"ALE DevOps configuration
let g:ale_linters = {
\   'yaml': ['yamllint'],
\   'dockerfile': ['hadolint'],
\   'sh': ['shellcheck'],
\   'bash': ['shellcheck'],
\}
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {
\   'yaml': ['prettier'],
\   'sh': ['shfmt'],
\   'bash': ['shfmt'],
\}
let g:ale_fix_on_save = 1
