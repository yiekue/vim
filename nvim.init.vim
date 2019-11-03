set nu
set nowrap
set fileformat=unix
set smartindent
set cindent
filetype indent on
set tabstop=4
set shiftwidth=4
set showmatch
set matchtime=5
set backspace=2
set expandtab
set laststatus=2
set encoding=utf-8
set hlsearch
set cursorline
set clipboard+=unnamedplus
set mouse=a

call plug#begin('~/.config/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'majutsushi/tagbar'
"Plug 'liuchengxu/vista.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'vimcn/vimcdoc'
Plug 'paroxayte/vwm.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'notpratheek/vim-sol'
Plug 'rakr/vim-one'
call plug#end()
filetype on

set pumheight=20

colorscheme gruvbox
"let g:gruvbox_contrast_dart='m'
let g:gruvbox_italic=1
let g:airline_theme="gruvbox"
set background=dark
set termguicolors

"colorscheme one
"let g:one_allow_italics = 1
"let g:airline_theme="one"

let g:rainbow_active = 1
let g:indentLine_enable=1



function! SetupCommandAbbrs(from, to)
    exec 'cnoreabbrev <expr> '.a:from
                \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
                \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction
" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

set hidden
set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position.
" " Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>
command! -nargs=0 Format :call CocAction('format')

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)]`

let g:coc_snippet_next='<c-j>'
let g:coc_snippet_prev='<c-k>'


autocmd CursorHold * silent call CocActionAsync('highlight')
au CursorHoldI * sil call CocActionAsync('showSignatureHelp')
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
let g:NERDTreeAutoCenter=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeChDirMode=2
"let NERDTreeQuitOnOpen=1  "打开文件时关闭树
let g:NERDTreeShowBookmarks=0
let g:NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']  "设置忽略文件类型
let g:NERDTreeAutoDeleteBuffer=1


let g:vista_default_executive = 'coc'
let g:vista_executive_for = {
            \ 'cpp': 'coc',
            \ 'py': 'coc'
            \ }

let g:airline#extensions#coc#enable=1
let g:airline#extensions#whitespace#enabled=0
let g:airline_skip_empty_sections = 1
