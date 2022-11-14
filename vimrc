"'''''''''''''''''''''''''''''vim_other'''''''''''''''''''''''''''''''''
" 设置UTF-8编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 解决Backspace无法删除问题
set backspace=2
" 设置鼠标
set mouse-=a
" 设置行数显示
set number
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
"使用空格来替换Tab"
set expandtab
"设置所有的Tab和缩进为4个空格"
set tabstop=4
"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4
"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"字符之间插入到像素行数目
set linespace=0

"'''''''''''''''''''''''''''''vim_other'''''''''''''''''''''''''''''''''



"''''''''''''''''''''''''''''''vim_color'''''''''''''''''''''''''''''''''
set backspace=2
syntax enable
colo evening 
colo gruvbox
"''''''''''''''''''''''''''''''vim_color'''''''''''''''''''''''''''''''''




"'''''''''''''''''''''''''''''' 使用vundle添加插件'''''''''''''''''''''''''
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
	Plugin 'ycm-core/YouCompleteMe'
	"-------------------------------
	Plugin 'preservim/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'
	"--------------------------------
	Plugin 'ryanoasis/vim-devicons'
	Plugin 'pangloss/vim-javascript'
	Plugin 'spf13/vim-autoclose'
	Plugin 'preservim/tagbar'
	Plugin 'vim-airline/vim-airline'
	Plugin 'Yggdroot/LeaderF'
	Plugin 'preservim/nerdcommenter'
call vundle#end()
filetype plugin indent on
"'''''''''''''''''''''''''''''' 使用vundle添加插件'''''''''''''''''''''''''


"''''''''''''''''''''''''Learn模糊查找''''''''''''''''''''''''''''''''''''''''
"<C-C>
"<ESC>	退出LeaderF
"-------------------
"<C-R>	在模糊搜索模式和正则表达式模式之间切换
"<C-F>	在全路径搜索模式和仅名称搜索模式之间切换
"<Tab>	切换到正常模式
"--------------------
"<C-V>
"<S-Insert>	从剪贴板粘贴
"--------------------
"<C-U>	清除提示
"<C-W>	删除提示中光标前的单词
"<C-J>	在结果窗口中向下移动光标
"<C-K>	在结果窗口中向上移动光标
"<Up>/<Down>	从历史中调用上一个/下一个输入模式
"--------------------
"<2-LeftMouse>
"<CR>	打开光标下的文件或选中的文件（选择多个文件时）
"--------------------
"<C-X>	在水平拆分窗口中打开
"<C-]>	在垂直拆分窗口中打开
"<C-T>	在新标签页中打开
"<C-\>	显示提示启用选择拆分窗口方法：垂直，水平，标签页等
"<F4>	刷新缓存
"--------------------
"<C-LeftMouse>
"<C-S>	选择多个文件
"--------------------
"<S-LeftMouse>	选择连续的多个文件
"<C-A>	选择所有文件
"<C-L>	清除所有选择
"<BS>	删除提示中的前一个字符
"<Del>	删除提示中的当前字符
"<Home>	将光标移动到提示的开头
"<End>	将光标移动到提示符的末尾
"<Left>	在提示中将光标向左移动一个字符
"<Right>	在提示中将光标向右移动一个字符
"<C-P>	预览结果
"<C-Up>	在弹出的预览窗口中向上滚动
"<C-Down>	在弹出的预览窗口中向下滚动
"''''''''''''''''''''''''Learn''''''''''''''''''''''''''''''''''''''''



""""""""""""""""""""""""" nerdtree_setting""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeWinSize=20
""""""""""""""""""""""""" nerdtree_setting""""""""""""""""""""""""""""""



