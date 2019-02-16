""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Valloric/YouCompleteMe'
Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'sheerun/vim-polyglot' "语言包, 只会加载当前语言的种类
Plug 'prettier/vim-prettier', {
 \ 'do': 'yarn install',
 \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale' "异步的错误提示,配合eslint可以显示错误
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html', 'vue'] }
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'SirVer/ultisnips' "snip插件
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tyru/caw.vim'  "注释插件,支持300种语言
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'mbbill/undotree'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jiangmiao/auto-pairs' "自动补充括弧插件

" Plug 'easymotion/vim-easymotion'
" Plug 'ternjs/tern_for_vim' "ternjs需要在每个项目配置, 提示区别不大
" Plug 'valloric/MatchTagAlways'
" Plug 'posva/vim-vue'  "不怎么开发vue, 禁用,需要的人自行打开
" Plug 'liuchengxu/eleline.vim' "底部状态条,显示git状态,
" Plug 'tpope/vim-repeat' "插件的重复只能重复一条,使用这个可以多条

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""系统设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 颜色设置
syntax enable

" highlight StatusLineNC guifg=Gray guibg=White
filetype on

" 禁用markdown语言包, 解决markdown关键字显常
let g:polyglot_disabled = ['markdown']
" 自动打开markdown预览
let g:mkdp_auto_start = 0

" 突出显示当前行
set cursorline
set encoding=utf-8
set fileencoding=utf-8
" set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set go=             " 不要图形按钮
set t_Co=256   " 启用256色
"color asmanian2     " 设置背景主题
set guifont=Courier_New:h10:cANSI   " 设置字体
syntax on           " 语法高亮
"autocmd InsertLeave * se nocul  " 用浅色高亮当前行
"autocmd InsertEnter * se cul    " 用浅色高亮当前行
set showcmd         " 输入的命令显示出来，看的清楚些
"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)
set scrolloff=12     " 光标移动到buffer的顶部和底部时保持3行距离
set novisualbell    " 不要闪烁(不明白)
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=0    " 永远不显示0 启动显示状态行(1),总是显示状态行(2)
"set foldenable      " 允许折叠
set nofoldenable " 不允许折叠
"set foldmethod=manual   " 手动折叠
"set background=dark "背景使用黑色
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
" 设置当文件被改动时自动载入
set autoread
"代码补全
" set completeopt=preview,menu
set completeopt-=preview
"共享剪贴板
set clipboard=unnamed

"自动保存
set autowrite
" set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=2
" 用space替代tab的输入
set expandtab
" 统一缩进为2
set softtabstop=2
set shiftwidth=2
" 不要用空格代替制表符
"set noexpandtab
" 在行和段开始处使用制表符
"set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
" 只有一个大写字母的搜索词，将大小写敏感
set smartcase
" 保留撤销历史
" set undofile
" set backupdir=~/.vim/.backup//
" set directory=~/.vim/.swp//
" set undodir=~/.vim/.undo//
" 出错时，不要发出响声。
set noerrorbells
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
"set langmenu=zh_CN.UTF-8
"set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 侦测文件类型
filetype on
" let g:auto_save_silent = 1  " do not display the auto-save notification
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
" set whichwrap+=<,>,h,l
set wrap "设置自动换行
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak
" mouse=a可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
" mouse=v 默认使用系统的鼠标,这样可以使用系统复制
set mouse=a
set selection=exclusive
" set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif



" 打开上次光标位置
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""插件的设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType apache setlocal commentstring=#\ %s


let g:vim_markdown_frontmatter=1
autocmd QuickFixCmdPost *grep* cwindow
let g:AutoPairsFlyMode = 1
let g:javascript_enable_domhtmlcss = 1
let g:gitgutter_max_signs = 500  " default value

"ycm的配置

"解决没有选中也自动补全的错误
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=0	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=0	" 从第90个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=1	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全

" 在注释输入中也能补全
let g:ycm_complete_in_comments = 0
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 0
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_show_diagnostics_ui =
\ get( g:, 'ycm_show_diagnostics_ui',
\ get( g:, 'ycm_register_as_syntastic_checker', 0))

" ycm读取typescript插件
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" ycm和snip的热键设置
set completeopt=longest,menu
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-e>"
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<Down>']
inoremap <expr> <cr>       pumvisible() ? "\<c-y>" : "\<cr>"
inoremap <expr> <Down>     pumvisible() ? "\<c-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<c-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<c-p>\<c-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<c-p>\<c-n>" : "\<PageUp>"
" 直接触发自动补全
let g:ycm_key_invoke_completion = '<c-space>'
" let g:ycm_key_select_completion= '<tab>'
"
" smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
" imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

" ycm默认需要按ctrl + space 来进行补全，可以在上面的花括号里面加入下面两行代码来直接进行补全
" let g:ycm_semantic_triggers = {
"\   'css': [ 're!^\s{4}', 're!:\s+', '</' ],
"\   'scss': [ 're!^\s{4}', 're!:\s+', '</' ],
"\   'js': [ 're!^\s{4}', 're!:\s+', '</' ],
"\   'jsx': [ 're!^\s{4}', 're!:\s+', '</' ],
"\   'vue': [ 're!^\s{4}', 're!:\s+', '</' ],
"\   'ts': [ 're!^\s{4}', 're!:\s+', '</' ],
"\   'tsx': [ 're!^\s{4}', 're!:\s+', '</' ],
"\ }
"
" 关闭函数原型提示
let g:ycm_add_preview_to_completeopt = 0
"  关闭错误提示
let g:ycm_show_diagnostics_ui = 0

"set tags+=~/.vim/tags/testtags
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/ycmd/tests/testdata/extra_conf/global_extra_conf.py'

" vim-javascript
" 用符号替换js中的一些代码
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
" let g:javascript_conceal_function ="ƒ"
" let g:javascript_conceal_null ="ø"
" let g:javascript_conceal_this ="@"
" let g:javascript_conceal_return ="⇚"
" let g:javascript_conceal_undefined ="¿"
" let g:javascript_conceal_NaN ="ℕ"
" let g:javascript_conceal_prototype ="¶"
" let g:javascript_conceal_static ="•"
" let g:javascript_conceal_super ="Ω"
" let g:javascript_conceal_arrow_function ="⇒"
" let g:javascript_conceal_noarg_arrow_function ="ˆ"
" let g:javascript_conceal_underscore_arrow_function ="¬"

set conceallevel=1

" mxw/vim-jsx
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

" MatchTagAlways
" let g:mta_filetypes = { 'javascript.jsx':1, 'javascript.js':1, 'javascript':1, 'vue':1 }

" [Buffers] Jump to the existing window if possible
let g:ackprg = 'ag --vimgrep'
" [Buffers] 如果可能跳到已存在窗口
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
let g:FZF_DEFAULT_COMMAND='ag --hidden --ignore node_modules -g""'

" [Commands] --expect expression for directly executing the command
" let g:fzf_commands_expect = 'alt-enter,ctrl-x'

"vim-vue
"如果你已经有了一些文件类型的配置，比如html，css和javascript（例如linters，completion），在Vue文件中使用它们的简单方法是设置如下的复合文件类型：
if !exists('g:jsx_ext_required')
  let g:jsx_ext_required = 0
endif

" Whether the @jsx pragma is required.
if !exists('g:jsx_pragma_required')
  let g:jsx_pragma_required = 0
endif

let s:jsx_pragma_pattern = '\%^\_s*\/\*\*\%(\_.\%(\*\/\)\@!\)*@jsx\_.\{-}\*\/'

" Whether to set the JSX filetype on *.js files.
fu! <SID>EnableJSX()
  if g:jsx_pragma_required && !exists('b:jsx_ext_found')
    " Look for the @jsx pragma.  It must be included in a docblock comment
    " before anything else in the file (except whitespace).
    let b:jsx_pragma_found = search(s:jsx_pragma_pattern, 'npw')
  endif

  if g:jsx_pragma_required && !b:jsx_pragma_found | return 0 | endif
  if g:jsx_ext_required && !exists('b:jsx_ext_found') | return 0 | endif
  return 1
endfu
" augroup FiletypeGroup
"     autocmd!
" augroup END
autocmd FileType vue syntax sync fromstart
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx let b:jsx_ext_found = 1
autocmd BufNewFile,BufRead *.js
\ if <SID>EnableJSX() | set filetype=javascript.jsx | endif
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd BufRead,BufNewFIle *.html setlocal filetype=html
autocmd BufRead,BufNewFIle *.css setlocal filetype=css
autocmd BufRead,BufNewFIle *.less setlocal filetype=less
autocmd BufRead,BufNewFIle *.ts setlocal filetype=typescript

" NERDTree
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 忽略显示文件
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.DS_Store', '\.meta', 'node_modules']
let g:nerdtree_tabs_open_on_console_startup=1 "在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_synchronize_focus=1
let NERDTreeShowLineNumbers=0
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=0
let NERDTreeQuitOnOpen=0 "当NERDTree打开文件时退出
let NERDTreeWinPos=1
let NERDTreeWinSize=32

" 启动就显示Tree
" autocmd vimenter * NERDTree
" 没指定文件时，启动显示Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" NERDTree的git显示
let g:NERDTreeIndicatorMapCustom = {
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

" ale 设置
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_echo_msg_error_str = '✗'
let g:ale_echo_msg_warning_str = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'javascript': ['eslint'], 'vue':['eslint']}
let g:ale_fixers = {
\   '*': ['prettier', 'eslint'],
\   'javascript': ['prettier', 'eslint'],
\   'vue': ['prettier', 'eslint']
\}
" Write this in your vimrc file
" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.map$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1
" let g:ale_list_window_size = 5
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 0

" autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

let g:clang_complete_auto = 1
let g:clang_complete_copen = 1

augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

" UltiSnips
" let g:UltiSnipsEditSplit="vertical"

" vue插件如果慢，就打开这个
let g:vue_disable_pre_processors=1

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line
" " let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction

function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown|babel
" Prettier default: babylon
let g:prettier#config#parser = 'babel'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" 简化eleline的样式,不显示右边
" let g:eleline_slim = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""热键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <header> 设置，默认为\
" let mapleader="\<space>"
" On OSX
" vmap <C-c> y:call system("pbcopy", getreg("/""))<CR>
" nmap <C-v> :call setreg("/"",system("pbpaste"))<CR>p


" 切换不同的主题
nmap <leader>c1 :colorscheme seoul256<cr>
nmap <leader>c2 :colorscheme bubblegum-256-light<cr>
nmap <leader>c3 :colorscheme bubblegum-256-dark<cr>
nmap <leader>c4 :colorscheme github<cr>
nmap <leader>c5 :colorscheme monokai-ym<cr>
nmap <leader>c6 :colorscheme space<cr>
nmap <leader>c7 :colorscheme molokai<cr>
nmap <leader>c8 :colorscheme beauty256<cr>
nmap <leader>c9 :colorscheme devbox-dark-256<cr>
nmap <leader>c0 :colorscheme xoria256<cr>
nmap <leader>c- :colorscheme 256-grayvim<cr>
nmap <leader>c= :colorscheme 256-jungle<cr>

colorscheme monokai-ym

" map ; :

" 快速保存
nmap dw <Plug>(Prettier) :w<cr>
nmap ds :w<cr>
nmap dq :q<cr>
nmap dp :reg<cr>


"dc, dv替换内容
nmap dc "tyiw
nmap dv viw"tp 

"移动屏幕
nmap K <c-b>
nmap J <c-f>

" 文件、文件内容搜索
nmap dj :Files<cr>
nmap dg :GFiles?<cr>
nmap dk :Ag<cr>
nmap da :Buffers<cr>
imap dk <plug>(fzf-complete-file-ag)
nmap dh :History<cr>
nmap d~ :FZF ~/
nmap d/ :FZF /
nmap d@ @:
"格式化
nmap = <Plug>(Prettier)
nmap sm :Marks<cr>
" 搜索替换
" :%s/aaa/bbb/c 把aaa换成bbb，/c表示需要询问确认
nmap dr :%s/

nnoremap du :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap di :YcmCompleter GoToDefinition<cr>
nnoremap do :YcmCompleter GoToDeclaration<cr>

" 书签设置
" nmap mm :marks<cr>
nmap <leader>m :delm!<cr>

" 跳转错误
nmap <silent> d[ <Plug>(ale_previous_wrap)
nmap <silent> d] <Plug>(ale_next_wrap)

" 由于K是帮助，没什么用，用来代替c-o
" nmap K <c-o>

" 针对行，换行
" nmap <c-k> ddkP
" nmap <c-j> ddp
" 在选择模式时，按m注释
xmap q gcc
nmap q gcc

" 更科学的复制粘贴, "+y 是系统剪切板
xmap 1 "1y
xmap 2 "2y
xmap 3 "3y
xmap 4 "4y
xmap 5 "5y
xmap 6 "6y
xmap 7 "7y
xmap 8 "8y
xmap 9 "9y

nmap d1 "1p
nmap d2 "2p
nmap d3 "3p
nmap d4 "4p
nmap d5 "5p
nmap d6 "6p
nmap d7 "7p
nmap d8 "8p
nmap d9 "9p

nmap D1 "1P
nmap D2 "2P
nmap D3 "3P
nmap D4 "4P
nmap D5 "5P
nmap D6 "6P
nmap D7 "7P
nmap D8 "8P
nmap D9 "9P

" 开启markdown或停止预览
nmap <leader>m :MarkdownPreview<cr>
nmap <leader>M :MarkdownPreviewStop<cr>

" su隐藏行号和git,为了鼠标复制方便，有时候要隐藏行号
nmap <leader>@git :GitGutterSignsToggle<cr>
nmap <leader>@nu! :set nu!<cr>
nmap so <leader>@git<leader>@nu!
" 取消高亮显示当前行
nmap sO :set cursorline!<cr>


" 切换NERDTreeMirror插件
" nmap sO :NERDTreeMirror<cr>
nmap sI :NERDTreeToggle<cr>

" 焦距当前页面
nmap <leader>@si :NERDTreeTabsFind<cr>
nmap si :NERDTreeToggle<cr><c-w>w<leader>@si

" 切换文件,自动切换 nerdtree 位置
let g:nerdtree_tabs_autofind=1
" map si :NERDTreeTabsToggle<cr>

" 全选
nmap sa ggVG

" 代替ctrl+w分屏幕
" 上下分割当前屏
nmap sV <c-w>s
" 左右分割当前屏
nmap sv <c-w>v
" 移动屏焦点
nmap sh <c-w>h
nmap sj <c-w>j
nmap sk <c-w>k
nmap sl <c-w>l
" 移动屏位置
nmap sH <c-w>H
nmap sJ <c-w>J
nmap sK <c-w>L
nmap sL <c-w>L
" 修改分屏大小
nmap s. <c-w>>
nmap s, <c-w><
nmap s= <c-w>+
nmap s- <c-w>-
" 搜索后主动取消搜索高亮
nmap sn :nohl<cr>
" nmap sq :q<cr>
" 重新载入当前文件
nmap sR :bufdo e<cr>
" 重新加载vimrc
nmap sr :source ~/.vimrc<cr>
" 关闭标签
nmap sT :tabo<cr>
" 打开Tab
nmap sc :tabnew<cr>

" 快速切换到bash, 使用exit命令返回vim
nmap sb :!bash<cr>

" 切换tab上一个下一个
" nmap s[ :tabp<cr>
" nmap s] :tabn<cr>
" nmap s1 1gt
" nmap s2 2gt
" nmap s3 3gt
" nmap s4 4gt
" nmap s5 5gt
" nmap s6 6gt
" nmap s7 7gt
" nmap s8 8gt
" nmap s9 9gt

" 切换屏焦点
" nmap sw <c-w>w

" 关闭当前屏
nmap sx <c-w>c
" 清理所有行尾空格
nmap s<space> :%s/\s\+$//<cr>:let @/=''<CR>
" nmap wc :tabc<cr>
nmap <leader>0 :tablast<cr>

" 使用系统的tree
" nmap si :Explore<cr>

" easymotion 跳转
" nmap q <Plug>(easymotion-s)



" undo-tree
nnoremap su :UndotreeToggle<cr> <c-w>h
" g- g+ 切换 undotree
nmap g= g+

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""VIM默认热荐记录
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 打开路径的文件是gf，跳回是<c-o>

" 30G 等于跳转到第三十行
" gd等于用当前单词搜搜
" `` 在两个编辑的地方来回跳转
" <c-a> 当前光标往后遇到的第一个数字加1, 3<c-a>加3
" <c-x> 和<c-a>类似，减少1

" selectMode模式下按=，vim的默格式代码

" d/xxx<cr> 从当前光标删除至跳转的位置

" 针对单词的操作
" 替换单词方法： yiw 先复制单词，viwp再替换另一个单词
" 以下v都可以使用c、d、y来代替以达到不同的效果，vi表示某范围内，va表示某范围内加范围边缘
" vi{ 选中{}中间的内容,不包括{}
" va{ 选中{}中间内容，包括{}
" vi( 选中()中间内容
" vi< 选中<>中间内容
" vi[ 选中[]中间内容
" vit 选中中间的内容
" vi” 选中”"中间内容
" vi’ 选中”中间的内容
" vis 选中一个句子
" vib 选中一个block
" viw选中一个单词
" vip 选中一个段落
"
" vim xxx.md --clean 清除vim的设置, 解决一些特殊问题
