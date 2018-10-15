" test-cat
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html', 'vue'] }
Plug 'mxw/vim-jsx'
" Plug 'valloric/MatchTagAlways'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tyru/caw.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""系统设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd QuickFixCmdPost *grep* cwindow
" 突出显示当前行
" set cursorline
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
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=0    " 启动显示状态行(1),总是显示状态行(2)
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
"set cursorline              " 突出显示当前行
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
set mouse=v
set selection=exclusive
set selectmode=mouse,key
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""插件的设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType apache setlocal commentstring=#\ %s
let g:AutoPairsFlyMode = 1
let g:javascript_enable_domhtmlcss = 1
let g:gitgutter_max_signs = 500  " default value

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第90个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_show_diagnostics_ui = 
 \ get( g:, 'ycm_show_diagnostics_ui',
 \ get( g:, 'ycm_register_as_syntastic_checker', 0))

" ycm默认需要按ctrl + space 来进行补全，可以在上面的花括号里面加入下面两行代码来直接进行补全
let g:ycm_semantic_triggers = {
\   'css': [ 're!^\s{2}', 're!:\s+', '</' ],
\   'scss': [ 're!^\s{2}', 're!:\s+', '</' ],
\   'js': [ 're!^\s{2}', 're!:\s+', '</' ],
\   'jsx': [ 're!^\s{2}', 're!:\s+', '</' ],
\   'vue': [ 're!^\s{2}', 're!:\s+', '</' ],
\   'ts': [ 're!^\s{2}', 're!:\s+', '</' ],
\   'tsx': [ 're!^\s{2}', 're!:\s+', '</' ],
\ }
"
" 关闭函数原型提示
let g:ycm_add_preview_to_completeopt = 0
"  关闭错误提示
let g:ycm_show_diagnostics_ui = 0 

"set tags+=~/.vim/tags/testtags
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/ycmd/tests/testdata/extra_conf/global_extra_conf.py'

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function ="ƒ"
let g:javascript_conceal_null ="ø"
let g:javascript_conceal_this ="@"
let g:javascript_conceal_return ="⇚"
let g:javascript_conceal_undefined ="¿"
let g:javascript_conceal_NaN ="ℕ"
let g:javascript_conceal_prototype ="¶"
let g:javascript_conceal_static ="•"
let g:javascript_conceal_super ="Ω"
let g:javascript_conceal_arrow_function ="⇒"
let g:javascript_conceal_noarg_arrow_function ="ˆ"
let g:javascript_conceal_underscore_arrow_function ="¬"

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
let g:FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

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

" json 不隐藏引号
" let g:vim_json_syntax_conceal = 0
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
let NERDTreeQuitOnOpen=1
" let NERDTreeWinSize=60
 
" 启动就显示Tree
" autocmd vimenter * NERDTree
" 没指定文件时，启动显示Tree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

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
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'javascript': ['eslint'], 'vue':['eslint']}
let g:ale_fixers = {
\   '*': ['prettier', 'eslint'],
\   'javascript': ['prettier', 'eslint'],
\   'vue': ['prettier', 'eslint']
\}
" Write this in your vimrc file
" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1
let g:ale_list_window_size = 5
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

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" airline
" 显示buffer-tabline 
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='zenburn'
" 修复airline模式切换延迟
set ttimeoutlen=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""热键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 更新vim配置
" nmap wr :so ~/.vimrc<cr>
" 颜色设置
syntax enable
colorscheme seoul256
" colorscheme bubblegum-256-light
" let mapleader="\\"
nmap <leader>c1 :colorscheme seoul256<cr>
nmap <leader>c2 :colorscheme bubblegum-256-light<cr>
nmap <leader>c3 :colorscheme bubblegum-256-dark<cr>
nmap <leader>c4 :colorscheme beauty256<cr>
nmap <leader>c5 :colorscheme devbox-dark-256<cr>
nmap <leader>c6 :colorscheme xoria256<cr>
nmap <leader>c7 :colorscheme 256-grayvim<cr>
nmap <leader>c8 :colorscheme 256-jungle<cr>
nmap <leader>c9 :colorscheme babymate256<cr>
nmap <leader>c0 :colorscheme

map ; :
" 文件、文件内容搜索
nmap fj :Files<cr>
nmap fk :GFiles?<cr>
nmap fa :Ag<cr>
nmap fl :Marks<cr>
nmap ff :Buffers<cr>
nmap fh :History<cr>
nmap fw :FZF ~/work<cr>
nmap f~ :FZF ~/<cr> 
nmap f/ :FZF /<cr> 
nmap fr :%s/
nmap fs @:

" 搜索替换
" :%s/aaa/bbb/c 把aaa换成bbb，/c表示需要询问确认

" 书签设置
" nmap mm :marks<cr>
nmap M :delm!

" 移动屏幕
nmap - <c-b>
nmap = <c-f>

" c-v在编辑时可用
inoremap <c-v> <c-r>"

" 针对行，换行
nmap K ddkP
nmap J ddp
" 在选择模式时，按m注释
xmap m gcc
nmap sm gcc
" 针对单词的操作
nmap ci bvEc
nmap cy bvEy
nmap cd bvEd
" 快速编辑
nmap e A
nmap a I

" su隐藏行号和git,为了鼠标复制方便，有时候要隐藏行号
nmap <leader>@git :GitGutterSignsToggle<cr>
nmap <leader>@nu! :set nu!<cr>
nmap su <leader>@git<leader>@nu!
" 取消高亮显示当前行
nmap sU :set cursorline!<cr>

" 切换NERDTreeMirror插件
nmap so :NERDTreeMirror<CR>
nmap so :NERDTreeToggle<CR>
" 焦距当前页面
nmap <leader>@si :NERDTreeTabsFind<CR>
nmap si sosl<leader>@si
"flet g:nerdtree_tabs_autofind=1
" map si :NERDTreeTabsToggle<CR>
" 代替ctrl+w分屏幕
" 上下分割当前屏
nmap sw <c-w>s
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
" 切换屏焦点
nmap ss <c-w>w
" 关闭当前屏
nmap sc <c-w>c
" 打开Tab
" nmap wt :Te<cr>
" 搜索后主动取消搜索高亮
nmap s, :nohl<cr>
" 快速保存
nmap ss :w<cr>
" nmap sq :q<cr> 
" 重新载入文件
nmap sr :bufdo e<cr>
" 关闭标签
nmap st :tabo<cr>
nmap sn :tabnew<cr>
" nmap wc :tabc<cr>
nmap s1 1gt
nmap s2 2gt
nmap s3 3gt
nmap s4 4gt
nmap s5 5gt
nmap s6 6gt
nmap s7 7gt
nmap s8 8gt
nmap s9 9gt
nmap s0 :tablast<cr>

" 使用系统的tree
" nmap si :Explore<cr>
"ctrl+a全选
map <c-a> ggVG
" 删除当前行但是保留空行
nmap da v^d
"格式化
" map fm :Neoformat<cr>
" map fM :Neoformat jsbeautify<cr>
nmap fm <Plug>(Prettier)
" easymotion 跳转
map <space> <Plug>(easymotion-s)

" 跳转错误
nmap <silent> s[ <Plug>(ale_previous_wrap)
nmap <silent> s] <Plug>(ale_next_wrap)
" 提示路径
"imap <c-m> <c-x><c-f>
" 补全和snip的热键设置
let g:UltiSnipsExpandTrigger="<tab>"
" " let g:UltiSnipsJumpForwardTrigger="<tab>"
" " let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-e>"
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
nnoremap fp :YcmCompleter GoToDeclaration<CR>
nnoremap fo :YcmCompleter GoToDefinition<CR>
nnoremap fi :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 直接触发自动补全
let g:ycm_key_invoke_completion = '<C-Space>'

inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""再编程
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 打开上次光标位置
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""结束
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
