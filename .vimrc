" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set number  "显示行号"
set guioptions-=r " 隐藏右侧滚动条
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=b " 隐藏底部滚动条
set guioptions-=T
set showtabline=0 " 隐藏Tab栏
syntax on   "开启语法高亮
set linespace=1
set nowrap  "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set smartindent
set cindent     "设置C样式的缩进格式"
filetype indent on
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号
set scrolloff=5     "距离顶部和底部5行"
set expandtab
set laststatus=2 "命令行为两行"
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set backspace=2
set mouse=a     "启用鼠标""
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set clipboard+=unnamed      "共享粘贴板
set whichwrap+=<,>,h,l
set autoread        "如果文件在其他地方被更改，自动读入
set cursorline      "突出显示当前行"
"set cursorcolumn       "突出显示当前列
let g:mapleader=','
"set autochdir "根据当前正在编辑的文件设置工作目录
"

set nocompatible              " 去除VI一致性,必须

"设置包括vundle和初始化相关的runtime path
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
call plug#begin('~/.vim/bundle')
Plug 'junegunn/vim-easy-align'      "自动对齐
Plug 'vim-airline/vim-airline'      "状态栏
Plug 'vim-airline/vim-airline-themes'   "状态栏主题
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }   "文件树
Plug 'Yggdroot/indentLine'          "缩进指示线
Plug 'Raimondi/delimitMate'         "括号、引号自动补全
Plug 'scrooloose/nerdcommenter'     "快速注释
Plug 'majutsushi/tagbar'
if has('gui_running')
    Plug 'yonchu/accelerated-smooth-scroll'     "gui下平滑滚动
endif
Plug 'hdima/python-syntax', {'for': 'python'}       "Python语法高亮改进
"Plug 'kien/rainbow_parentheses.vim'     "彩虹括号
Plug 'luochen1990/rainbow'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['cpp']}      "c++语法高亮改进
Plug 'ctrlpvim/ctrlp.vim'       "目录内搜索文件
Plug 'dyng/ctrlsf.vim'      "目录内搜索字符串
Plug 'skywind3000/asyncrun.vim', {'on': ['AsyncRun']}       "异步执行shell命令
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'     "代码片段
Plug 'vimcn/vimcdoc'        "中文的vim文档
Plug 'liwangmj/green_vim_switchtoinc'       "c++头文件和源文件切换
Plug 'mhinz/vim-startify'       "启动页面
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}     "代码格式化
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'groenewege/vim-less', {'for': 'less'}
Plug 'vim-scripts/DoxygenToolkit.vim', {'for': 'cpp'}
"Plug 'ryanoasis/vim-devicons'
"Plug 'tenfyzhong/CompleteParameter.vim'

Plug 'w0ng/vim-hybrid',{'do': 'cp ~/.vim/bundle/vim-hybrid/colors/hybrid.vim ~/.vim/colors'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'notpratheek/vim-sol'
Plug 'rakr/vim-one'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'for': ['vim', 'python', 'cpp'] }
    Plug 'zchee/deoplete-jedi', {'for': ['python']}
    Plug 'zchee/deoplete-clang', {'for': 'cpp'}
    "Plug 'tweekmonster/deoplete-clang2'
    Plug 'Shougo/neco-vim' , {'for': ['vim']}
    Plug 'Shougo/neco-syntax'
    Plug 'Shougo/echodoc.vim'
    Plug 'Shougo/neoinclude.vim', {'for': 'cpp'}
    "Plug 'roxma/clang_complete'
    "Plug 'roxma/nvim-completion-manager'
    Plug 'w0rp/ale', {'for': ['vim', 'cpp', 'python']}
else
    Plug 'rdnetto/YCM-Generator',{'branch': 'stable'}
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang'}       "代码补全
    "Plug 'maralla/completor.vim'
endif
call plug#end()
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
filetype on


set background=dark    "设置背景色
"colorscheme evening
"colorschem monokai     "设置主题样式
"colorschem molokai
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorschem desert
"colorschem torte
"colorschem dracula
"colorscheme github


"set termguicolors
"colorscheme hybrid

"colorscheme NeoSolarized
"let g:airline_theme="solarized"

"colorscheme PaperColor
"let g:airline_theme='papercolor'

"colorscheme sol
"let g:airline_theme="sol"

"set termguicolors
"colorscheme space-vim-dark

"colorscheme gruvbox
"let g:gruvbox_contrast_dark='soft'
"let g:gruvbox_contrast_light='soft'
"let g:gruvbox_italic=1
"let g:airline_theme="gruvbox"

"let g:one_allow_italics = 1
set termguicolors
colorscheme one
let g:one_allow_italics = 1
let g:airline_theme='one'
"let g:airline_theme="onedark"

"set termguicolors
"colorscheme nord
"let g:nord_italic_comments = 1
"let g:airline_theme='nord'

"let g:airline_theme="light"
"let g:airline_theme="dark"
"let g:airline_theme="badwolf"

let g:rainbow_active = 1

"/////////////YCM配置////////////////////////
let g:NERDTreeChDirMode=2
""let NERDTreeQuitOnOpen=1  "打开文件时关闭树
let g:NERDTreeShowBookmarks=0
let g:NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']  "设置忽略文件类型
let g:NERDTreeWinSize=30
let g:NERDTreeAutoDeleteBuffer=1
""au VimEnter * NERDTree              "打开vim时默认开启树
let g:NERDTreeAutoCenter=1
let g:NERDTreeMinimalUI=1


"缩进指示线"
let g:indentLine_char='┆'
"let g:indentLine_char='¦'
"let g:indentLine_char='│'
let g:indentLine_enabled = 1

let g:tagbar_compact=1
let g:tagbar_width=40
let g:tagbar_ctags_bin='ctags'
"let g:tagbar_autofocus = 1

"autopep8设置
let g:autopep8_disable_show_diff=1

"python高亮
let g:python_highlight_all = 1

" airline设置
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = '\uE0B4'
"let g:airline_right_sep = '\uE0B6'
let g:airline#extensions#whitespace#enabled=1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
"set guifont=Consolas\ for\ Powerline\ 12
"set guifont=CodeNewRoman\ Nerd\ Font:h14
set guifont=Monaco\ for\ Powerline:h13
"set guifontwide=苹方-简
if has('g:asyncrun_status')
    let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
endif
let g:airline_skip_empty_sections = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"let g:airline_symbols.space='\ua0'


" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" 高亮括号插件
"let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'],
"\ ['Darkblue', 'SeaGreen3'],
"\ ['darkgray', 'DarkOrchid3'],
"\['darkgreen', 'firebrick3'],
"\['darkcyan', 'RoyalBlue3'],
"\['darkred', 'SeaGreen3'],
"\['darkmagenta', 'DarkOrchid3'],
"\['brown', 'firebrick3'],
"\['gray', 'RoyalBlue3'],
"\['black', 'SeaGreen3'],
"\['darkmagenta', 'DarkOrchid3'],
"\['Darkblue', 'firebrick3'],
"\['darkgreen', 'RoyalBlue3'],
"\['darkcyan', 'SeaGreen3'],
"\['darkred', 'DarkOrchid3'],
"\['red', 'firebrick3']]
let g:rbpt_max = 16
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" C++高亮
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:c_no_curly_error=1



augroup vimrc
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(10, 1)
augroup END
function RunCode()
    let l:current_file_name_no_extension=expand('%:r')
    w
    if (expand('%:e') == 'py')
        AsyncRun python -u %
    elseif (expand('%:e') == 'cpp')
        let g:asyncrun_exit='!rm '. l:current_file_name_no_extension
        AsyncRun g++ -o %< % -std=c++11 `pkg-config --cflags --libs opencv`&&./%<

    elseif (expand("%:e") == "c")
        AsyncRun clang -o %< %&./%<
    endif
endfunction

let g:iSearchPatchName = ['src', 'Src', 'SRC', 'inc', 'Inc', 'INC', 'source', 'Source', 'SOURCE', 'include', 'Include', 'INCLUDE', 'my_inc']



"""""""""""""""YouCompleteMe和UltiSnips代码自动补全""""""""""
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'   "默认配置的ycm_extra_conf.py
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
set completeopt=longest,menu
"补全菜单高度
set pumheight=15
let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_path_to_python_interpreter='/usr/local/bin/python'
let g:ycm_collect_identifiers_from_tage_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_max_diagnostics_to_display=50
let g:ycm_cache_omnifunc=0           " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_enable_diagnostic_highlighting=1
let g:ycm_error_symbol = '>'
let g:ycm_warning_symbol = '!'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 1

let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_completion=0

let g:ycm_filepath_completion_use_working_dir=1

let g:ycm_use_ultisnips_completer=1

"let g:cur_dir = getcwd()
"let g:cur_file = expand("%:p:h")

"let g:ycm_extra_conf_vim_data=[]
"call add(g:ycm_extra_conf_vim_data, 'g:cur_dir')
"call add(g:ycm_extra_conf_vim_data, 'g:cur_file')

" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<F6>'
"let g:ycm_semantic_triggers =  {
"\   'c' : ['->', '.', 're!\W+[0-9a-zA-Z\_]{1,2}$'],
"\   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
"\   'ocaml' : ['.', '#'],
"\   'cpp,objcpp' : ['->', '.', '::', 're!\W+[0-9a-zA-Z\_]{1,3}?$'],
"\   'perl' : ['->'],
"\   'php' : ['->', '::'],
"\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"\   'ruby' : ['.', '::'],
"\   'lua' : ['.', ':'],
"\   'erlang' : [':'],
"\ }
"
"let g:ycm_filetype_blacklist = {'python': 1, 'tagbar': 1, 'qf': 1, 'notes': 1, 'markdown': 1, 'unite': 1, 'vimwiki': 1, 'pandoc': 1, 'infolog': 1, 'mail': 1}

function! s:onCompleteDone()
    let l:abbr=v:completed_item.abbr
    let l:startIdx=stridx(l:abbr,"(")
    let l:endIdx=strridx(l:abbr,")")
    if l:endIdx - l:startIdx >1
        let argsStr=strpart(l:abbr,l:startIdx+1,l:endIdx-l:startIdx-1)
        let argsList=[]
        let arg=''
        let countParent=0
        for i in range(strlen(argsStr))
            if argsStr[i] == ',' && countParent == 0
                call add(argsList,arg)
                let arg=''
            elseif argsStr[i] == '('
                let countParent += 1
                let arg = arg . argsStr[i]
            elseif argsStr[i] == ')'
                let countParent -= 1
                let arg = arg . argsStr[i]
            else
                let arg = arg . argsStr[i]
            endif
        endfor
        if arg != '' && countParent == 0
            call add(argsList, arg)
        endif
    else
        let argsList = []
    endif
    let snippet = '('
    let c = 1
    for i in argsList
        if c > 1
            let snippet = snippet . ", "
        endif
        let arg = substitute(i,'^\s*\(.\{-}\)\s*$','\1','')
        let snippet = snippet . '${' . c . ":" . arg . '}'
        let c+= 1
    endfor
    let snippet = snippet . ')' . "$0"
    return UltiSnips#Anon(snippet)
endfunction
autocmd VimEnter * imap <expr> ( pumvisible() && exists('v:completed_item') && !empty(v:completed_item) && v:completed_item.word != '' && v:completed_item.kind == 'f' ? "\<C-R>=\<SID>onCompleteDone()\<CR>" : "<Plug>delimitMate("
autocmd VimEnter * imap <silent> <expr> <TAB> delimitMate#ShouldJump() ? delimitMate#JumpAny() : "\<C-r>=UltiSnips#ExpandSnippetOrJump()\<CR>"
autocmd VimEnter * inoremap <S-TAB> <S-TAB>
autocmd VimEnter * imap <expr> <CR> pumvisible() ? (exists('v:completed_item') && !empty(v:completed_item) && v:completed_item.word != '' && v:completed_item.kind == 'f') ? "\<C-R>=\<SID>onCompleteDone()\<CR>" : "\<C-y>" : "\<Plug>delimitMateCR"

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

function! g:UltiSnips_Reverse()
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
        return "\<C-P>"
    endif

    return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"


"autocmd BufEnter,BufHidden *.c,*.cpp,*.cc,*.cxx,*.h,*.hxx,*.hpp call ResetFlags()

"function ResetFlags()
"YcmCompleter ClearCompilationFlagCache
"echo "call ResetFlags"
"let dir_now = expand("%:p:h")
"if dir_now == g:cur_file
"return
"endif
"let g:cur_file = expand("%:p:h")
"YcmCompleter ClearCompilationFlagCache
"endfunction


let g:complete_parameter_mapping_goto_next = '<TAB>'
let g:complete_parameter_mapping_goto_previous = '<S-TAB>'




""""""""""""""""""""keymapping""""""""""""""""""""""
"map <C-h> :wincmd h<CR>
"map <C-l> :wincmd l<CR>
"map <C-j> :wincmd j<CR>
"map <C-k> :wincmd k<CR>
"imap <C-k> :wincmd k<CR>

map <C-h> :bNext<CR>
map <C-l> :bnext<CR>

"nerdtree
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> <leader>ci
map <F5> :UndotreeToggle<CR>
map <F8> :Autoformat<CR>
map <F9> :call RunCode()<CR>

nmap <space> :
vmap <space> :
nmap s :A<CR>
nmap <C-c> :AsyncStop<CR>

" CtrlSF 快捷键映射
nmap f <Plug>CtrlSFPrompt
nmap F <Plug>CtrlSFQuickfixPrompt

" 跳转到定义
map gf :YcmCompleter GoTo<CR>
map t :YcmCompleter GetType<CR>
map m :YcmCompleter GetDoc<CR>

let g:echodoc#enable_at_startup=1
if has('nvim')
    set noshowmode
    "set cmdheight=2

    "let g:chromatica#enable_at_startup=1
    "let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'

    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_refresh_always=0
    let g:deoplete#enable_smart_case=1
    let g:deoplete#auto_complete_delay=5
    let g:deoplete#enable_camel_case=1

    let g:deoplete#sources#clang#libclang_path='/usr/local/opt/llvm/lib/libclang.dylib'
    let g:deoplete#sources#clang#clang_header='/usr/local/opt/llvm/include'
    let g:deoplete#sources#clang#flags=['-I/usr/include', '-I/usr/local/include', '-I/usr/local/include/eigen3']

    function! LinterStatus() abort
        let l:counts = ale#statusline#Count(bufnr(''))
        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors
        return l:counts.total == 0 ? 'OK' : printf('%dW %dE', l:all_non_errors, l:all_errors)
    endfunction
    set statusline=%{LinterStatus()}
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    let g:ale_set_loclist = 0
    let g:ale_set_quickfix = 0
    let g:ale_sign_error = '>'
    let g:ale_sign_warning = '!'
    let g:ale_linters = {
                \   'python': ['flake8'],
                \   'cpp': ['clang'],
                \   'cmake': ['cmakelint'],
                \   'vim': ['vint'],
                \}
    map <C-n> :ALENextWrap<CR>
    map <S-p> :ALEPreviousWrap<CR>

    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

else
    let g:airline#extensions#ycm#enabled = 1
    let g:airline#extensions#ycm#error_symbol = 'E:'
    let g:airline#extensions#ycm#warning_symbol = 'W:'
endif

"let g:clang_library_path='/usr/local/opt/llvm/lib/libclang.dylib'
"let g:completor_python_binary='/usr/local/bin/python'
"let g:competor_clang_binary='/usr/bin/clang'
