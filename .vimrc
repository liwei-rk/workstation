call pathogen#infect()
syn on                      "语法支持

"common conf {{             通用配置
set nocompatible            "not for backward compatible,don't care it"
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set showmode 		    "show current mode insert or visual,nothing indicate normal" 
set laststatus=2            "总是显示状态行
"set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
"set shiftwidth=4
"set tabstop=4
set mouse=a		    "enable mouse"
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠
"}}

nmap <C-t> :NERDTree<CR>  
"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set t_Co=256
 let g:Powerline_symbols = 'fancy'
"}
"taglist{
    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='/usr/bin/ctags'  "设置ctags命令的位置
    nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}
