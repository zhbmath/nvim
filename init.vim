"Settings by hbzhao
colorscheme elflord " 配色主题
filetype plugin indent on   " 打开相关插件脚本"
syntax on           " 语法高亮
set number          " 显示行数
set softtabstop=4   " 设置缩进宽度为4
set shiftwidth=4    " 设置缩进宽度为4
set laststatus=2    " 设置显示底行
set statusline=%m[%F]%y[%{&ff}]%*%=[%l:%c][%p%%]  " 设置底行显的内容
set fileencodings=utf-8,gbk,cp936,ucs-bom " 打开文件时的编码      
set fileencoding=utf-8                    " 保存文件时的编码
set encoding=utf-8                        " 显示消息时的编码
set termencoding=utf-8                    " 终端使用的编码
set nocompatible    " 设置不兼容vi键盘模式
set nobackup        " 关闭备份文件
set noswapfile      " 关闭交换文件

map <c-j> <c-w>j    " 光标下移窗口
map <c-k> <c-w>k    " 光标上移窗口
map <c-l> <c-w>l    " 光标右移窗口
map <c-h> <c-w>h    " 光标左移窗口  
nnoremap QQ :qa!<CR>
inoremap ;; <ESC>   " 映射;;为ESC键"

set completeopt=longest,menu,menuone  
set nocompatible      "关闭vi兼容模式"
syntax enable         "启用语法高亮"
filetype plugin on    "启用文件类型检测插件"
filetype plugin indent on    "打开文件类型检测功能"

set tags=tags;/           "逐级向上递归查找"
set autochdir             "查找符号时自动改变当前目录"
set tags+=~/.vim/systags  "添加系统库函数名、原型预览等功能"
cs add cscope.out         "添加cscope文件"
set cscopequickfix=s-,c-,d-,i-,t-,e-  

map <F2> :NERDTreeToggle<CR>  " 设置NERDtree窗口快捷键"
map <F3> :AsyncRun<Space>     " 设置运行AsynRun快捷键"
map <silent> <F4> :TagbarToggle<CR> "设置快捷键"
map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> "按F8"
map <F9> :call asyncrun#quickfix_toggle(8)<cr>  "关闭AsyncRun窗口Quickfix窗口"

let g:asyncrun_open = 8       " 设置Quickfix窗口高度"
let g:asyncrun_encs = 'gbk'   " 设置Quickfix窗口编码"

let g:tagbar_ctags_bin='/usr/bin/ctags'    "不在PATH里需要指定路径"
let g:tagbar_width=30                      "设置宽度"
let g:tagbar_left = 1                      "窗口左侧"
let g:tagbar_autofocus=1                   "启动时自动聚焦"

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'     " 文件和目录树插件
Plug 'skywind3000/asyncrun.vim'
Plug 'preservim/tagbar'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/OmniCppComplete'
Plug 'neoclide/coc.nvim',{'branch':'release'} " LSP 支持
call plug#end()
