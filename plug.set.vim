
" 主题切换
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>

"Plug 'ap/vim-buftabline'                   " buffer管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:buftabline_numbers = 2                " 显示数字编号
let g:buftabline_show = 1                   " 超过一个标签才显示
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

" cpp-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"拷贝函数或变量，和:PasteCode结合使用
nnoremap <leader>y :CopyCode<cr>
"生成函数实现或变量定义，和:CopyCode结合使用
nnoremap <leader>p :PasteCode<cr>
"c++头文件和实现文件的互相切换
nnoremap <silent> <leader>a :Switch<cr>

" Plug 'chxuan/prepare-code'          "新建文件时，生成预定义代码片段
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:prepare_code_plugin_path = expand($HOME . "/.local/share/nvim/plugged/prepare-code")

" vim-edit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>
nnoremap <leader>r :ReplaceTo<space>

"彩色括号  ===>>  Plug 'luochen1990/rainbow'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

" Plug 'Yggdroot/indentLine'                    " 文本对齐线
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0
autocmd FileType json setlocal conceallevel=0
autocmd Filetype json let g:indentLine_enabled = 0
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" Plug 'easymotion/vim-easymotion' 当前文件单词跳转
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
" <Leader>w{char} to move to {char}
map  <space>w <Plug>(easymotion-bd-f)
nmap <space>w <Plug>(easymotion-overwin-f)
map  <space>s <Plug>(easymotion-bd-w)
nmap <space>s <Plug>(easymotion-overwin-w)
map  <space>l <Plug>(easymotion-bd-jk)
nmap <space>l <Plug>(easymotion-overwin-line)

" leaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_PopupPalette = {
    \  'light': {
    \      'Lf_hl_match': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#303136',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '236'
    \              },
    \      'Lf_hl_cursorline': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#303136',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '236'
    \              },
    \      },
    \  'dark': {
    \      }
    \  }

" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
set ambiwidth=double
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
" let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>f"
noremap <space>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <space>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <space>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <space>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>


" chiel92/vim-autoformat  代码自动格式化
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F12> :Autoformat<CR>       " 快捷键<F12>
let verbose=1                       " 出错时提示
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

let g:formatdef_allman = '"astyle --style=allman --pad-oper"'
let g:formatters_cpp = ['allman']
let g:formatters_c = ['allman']
" pep8 is default,you can choose: google, facebook, chromium
let g:formatter_yapf_style = 'facebook'

" ale-setting 代码检查
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
"普通模式下，上一个错误或警告，下一个错误或警告
nmap [ <Plug>(ale_previous_wrap)
nmap ] <Plug>(ale_next_wrap)
"<F11>触发/关闭语法检查
nmap <F11> :ALEToggle<CR>
"<Leader>m查看错误或警告的详细信息
nmap <Leader>m :ALEDetail<CR>
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['pylint'],
            \}


" vim-commentary 注释
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
" 修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s

"Plug 'liuchengxu/vista.vim'   显示类、结构体、函数、变量等基于ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><nowait> <leader>t :<C-u>Vista!!<cr>
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
            \ 'cpp': 'coc',
            \ 'php': 'coc',
            \ }
let g:vista_ctags_cmd = {
            \ 'haskell': 'hasktags -x -o - -c',
            \ }
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
            \   "function": "\uf794",
            \   "variable": "\uf71b",
            \  }

" nerdtree                  目录树
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 nnoremap <silent> <leader>n :NERDTreeToggle<cr>
 let g:NERDTreeFileExtensionHighlightFullName = 1
 let g:NERDTreeExactMatchHighlightFullName = 1
 let g:NERDTreePatternMatchHighlightFullName = 1
 let g:NERDTreeHighlightFolders = 1
 let g:NERDTreeHighlightFoldersFullName = 1
 let g:NERDTreeDirArrowExpandable = '▸'
 let g:NERDTreeDirArrowCollapsible = '▾'
 let g:NERDTreeQuitOnOpen = 3
 let NERDTreeShowLineNumbers=1

" auto-pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsShortcutJump = '<M-n>'           " 跳出一层括号
let g:AutoPairsShortcutBackInsert ='<M-b>'      "
let g:AutoPairsMapBS = 0                        " <BS> 只删除一个符号
let g:AutoPairsMapCh = 1                        " 把ctrl+h键映射为删除括号对和引号
let g:AutoPairsCenterLine = 1
let g:AutoPairsFlyMode = 1

" coc.nvim 补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不提交错误信息
set shortmess+=c

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 设置触发滚动方式 <tab> <c-n> <PnDown> and <s-tab> <c-p> <PnUp>
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 触发一次补全
inoremap <silent><expr> <S-k> coc#refresh()

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" 使用`[g` and `]g` to 浏览错误提示
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" 定义及实现跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" 重命名变量或者函数.
nmap <leader>rn <Plug>(coc-rename)
augroup mygroup
    autocmd!
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
"所选目标生成函数。
xmap <leader>h  <Plug>(coc-codeaction-selected)
nmap <leader>h  <Plug>(coc-codeaction-selected)
"coc#status coc#status使statusline用CTRL-S 范围选择,ccls 不支持clangd支持。
nmap <silent> <c-s> <Plug>(coc-range-select)
xmap <silent> <c-s> <Plug>(coc-range-select)

" tabular
nnoremap <leader>l :Tab/\|<cr>
nnoremap <leader>= :Tab/=<cr>
nnoremap <leader>_ :Tab/_<cr>
nnoremap <leader><space>:Tab /' '<cr>


" 语法高亮
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"coc.nvim 插件表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <space>cy :CocCommand yank.clean<cr>
let g:coc_global_extensions = ['coc-jedi' ,'coc-solargraph','coc-json','coc-go','coc-clangd','coc-snippets','coc-vimlsp','coc-yank','coc-highlight']

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

" bookmarks  书签
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '⚑'
let g:bookmark_highlight_lines = 0
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
}

EOF

