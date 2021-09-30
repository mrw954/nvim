"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","             " 定义<leader>键
set nocompatible                " 设置不兼容原始vi模式
filetype on                     " 设置开启文件类型侦测
filetype plugin on              " 设置加载对应文件类型的插件
set noeb                        " 关闭错误的提示
syntax enable                   " 开启语法高亮功能
syntax on                       " 自动语法高亮
set t_Co=256                    " 开启256色支持
set showcmd                     " 显示操作提示,右下角命令提示
set ruler                       " 总是显示光标位置
set laststatus=2                " 总是显示状态栏
set cmdheight=1                 " 设置命令行的高度

set number                      " 开启行号显示
set relativenumber              " 开启相对行号

set cursorline                  " 高亮显示当前行
set whichwrap+=<,>,h,l          " 设置光标键跨行
set ttimeoutlen=0               " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set numberwidth=1               " 设置行号宽度
set scrolloff=10                " 设置光标在倒数第十行
set autochdir                   " 命令在当前目录下执行
set list                        " 显示行尾空格
"set mouse=a                    " 设置可以在VIM使用鼠标
"set cursorcolumn                " 设置光标所在列高亮
let g:indentLine_enabled = 1    " 开启代码对齐线
set hidden
set ambiwidth=double            " 设置为双字宽显示，否则无法完整显示如:☆
set t_ut=                       " 防止vim背景颜色错误
set guicursor=                  " NeoVim 如看到奇怪字符

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                  " 设置自动缩进
set cindent                     " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0     " 设置C/C++语言的具体缩进方式
set smartindent                 " 智能的选择对其方式
filetype indent on              " 自适应不同语言的智能缩进
set expandtab                   " 将制表符扩展为空格
set tabstop=4                   " 设置编辑时制表符占用空格数
set shiftwidth=4                " 设置格式化时制表符占用空格数
set softtabstop=4               " 设置4个空格为制表符
set smarttab                    " 在行和段开始处使用制表符
" set nowrap                      " 禁止折行
set backspace=2                 " 使用回车键正常处理indent,eol,start等
set sidescroll=10               " 设置向右滚动字符数

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                    " vim自身智能补全
set completeopt-=preview        " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                          " 开始折叠
set foldmethod=syntax                   " 设置语法折叠
set foldcolumn=0                        " 设置折叠区域的宽度
setlocal foldlevel=9                    " 设置折叠层数为
set foldlevelstart=99                   " 打开文件是默认不折叠代码"
"set foldclose=all                      " 设置为自动关闭折叠                
nnoremap <space><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  " 用空格键来开关折叠

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                    " 高亮显示搜索结果
set incsearch                   " 开启实时搜索功能
set ignorecase                  " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                    " 设置不备份
set noswapfile                  " 禁止生成临时文件
set autoread                    " 文件在vim之外修改过，自动重新读入
set autowrite                   " 设置自动保存
set confirm                     " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" 根据模式改变光标类型,普通模式块状光标，插入模式条状光标，替换模式下划线状光标
" 某些环境可能不支持
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif


" load vim default plugin
runtime macros/matchit.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编辑vimrc相关配置文件
nnoremap <leader>e :edit $MYVIMRC<cr>
nnoremap <leader>sp :edit ~/.config/nvim/plug.set.vim<cr>
nnoremap <leader>lp :edit ~/.config/nvim/plug.list.vim<cr>

" 查看vimplus的help文件
nnoremap <leader>h :view +let\ &l:modifiable=0 ~/.local/share/nvim/help.md<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 分屏窗口移动
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-up> <c-w>-
nnoremap <c-down> <c-w>+
nnoremap <c-left> <c-w><
nnoremap <c-right> <c-w>>
" 复制当前选中到系统剪切板
vmap <leader><leader>y "+y

" 将系统剪切板内容粘贴到vim
nnoremap <leader><leader>p "+p

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 设置python路径
let g:python_host_prog = '/bin/python'
let g:python3_host_prog = '/bin/python3'

" 禁用ale的lsp  使用cocnvim的lps
let g:ale_disable_lsp = 1

" 加载自定义插件
source $HOME/.config/nvim/plug.list.vim
" 加载插件设置
source $HOME/.config/nvim/plug.set.vim

" 主题设置
" set background=dark
let g:onedark_termcolors=256
" color gruvbox
color onedark
" color solarized
" color molokai
" color OceanicNext
" color desert
" color solarized8_high

" 让Vim的补全菜单行为与一般IDE一致
set completeopt=longest,menu
" 上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" 状态栏主题
let g:lightline = {
            \ 'colorscheme': 'onedark',
            \ }

" 设置背景透明
hi Normal ctermfg=252 ctermbg=none
" 大写Q为退出
map Q :q<CR>
" 大写W为写入
map W :w<CR>
" 使用q跳转到行首、行尾
noremap <expr>` col(".")==1?"$":"0"
vnoremap <expr>` col(".")==1?"$h":"0"
" 添加路径
set path +=.,/usr/local/include/pcl-1.8

" =============
" === 插入模式
" =============
" 移动到行首
inoremap <A-i> <Home>
" 移动到行尾
inoremap <A-a> <End>
" 向左移动
inoremap <A-h> <Left>
" 向下移动
inoremap <A-j> <Down>
" 向上移动
inoremap <A-k> <Up>
" 向右移动
inoremap <A-l> <Right>
" 删除一个单词
inoremap <A-w> <C-w>
" 删除一行
inoremap <A-u> <C-u>
" 跳转到首行
inoremap <A-g> <ESC>ggi
" 跳转到最后一行
inoremap <A-G> <ESC>GA
" 向前一个单词
inoremap <A-b> <ESC>bi
" 向后一个单词
inoremap <A-e> <ESC>ea
" 输入模式下保存
inoremap <A-W> <ESC>:w<CR>a
" 设置削除当前搜索的高亮
noremap cl :nohlsearch<CR>
" 打开关闭拼写检查
map <leader>sc :set spell!<cr>
" 删除空行
nnoremap <space>dd :g/^\s*$/d<cr>
" 多行 -> 一行
nnoremap <space>dl :g/^\s*$\n\n/d<CR>
" buffer 切换和关闭
nmap <leader>d :bp<cr>:bd #<cr>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
