call plug#begin('~/.local/share/nvim/plugged')

" Plug 'rafi/awesome-vim-colorschemes'                " 主题包
Plug 'chxuan/change-colorscheme'                    " 主题切换
Plug 'joshdick/onedark.vim'                         " onedark 配色
Plug 'dracula/vim', { 'as': 'dracula'  }            " 德古拉主题
Plug 'rose-pine/neovim'

Plug 'ryanoasis/vim-devicons'                       " 显示图标
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ap/vim-buftabline'                            " buffer管理
Plug 'itchyny/lightline.vim'                        " 下方状态栏
Plug 'chxuan/cpp-mode'                              " 提供生成函数实现、函数声明实现跳转、.h .cpp切换等功能
Plug 'chxuan/vim-edit'                              " 方便的文本编辑
Plug 'luochen1990/rainbow'                          " 彩色括号
" Plug 'Yggdroot/indentLine'                          " 对齐线
Plug 'easymotion/vim-easymotion'                    " 强大的光标快速移动工具,比鼠标更快
Plug 'junegunn/vim-slash'                           " 优化搜索，移动光标后清除高亮
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }                          " 文件搜索
Plug 'chiel92/vim-autoformat'                       " 代码格式化插件
Plug 'tpope/vim-repeat'                             " 使用 '.' 即可重复操作
Plug 'dense-analysis/ale'                           " 代码检查

Plug 'MattesGroeger/vim-bookmarks'                  " 书签
Plug 'tpope/vim-surround'                           " 快速增加取消文本两侧的双引号、单引号、标签等
Plug 'tpope/vim-commentary'                         " 快速注释
Plug 'rhysd/clever-f.vim'                           " 快速跳转
Plug 'chxuan/prepare-code'                          " 预定义代码
Plug 'liuchengxu/vista.vim'                         " 显示类、结构体、函数、变量等基于ctags
Plug 'preservim/nerdtree'                           " 资源管理器

Plug 'jiangmiao/auto-pairs'                         " 自动补全引号、圆括号、花括号等
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " coc.nvim 插件体系

Plug 'honza/vim-snippets'                           " 代码片段

Plug 'godlygeek/tabular'                            " 对齐
Plug 'MicoStrong/sharpvim-startify'                 " 启动页
Plug 'tpope/vim-fugitive'                           " git

Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build'  }

" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'   }


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'xiyaowong/nvim-transparent'

Plug 'skywind3000/vim-terminal-help'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }

"""""""""""""""""""""""""""""
call plug#end()

