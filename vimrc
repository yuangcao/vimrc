set nu
set ts=4
set autoindent               "自动缩进
set cindent                  "C自动缩进
set shiftwidth=4             "自动缩进空白字符个数

call plug#begin('~/.vim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'skywind3000/asyncrun.vim'
Plug 'w0rp/ale'
call plug#end()

"配置autopairs
let g:AutoPairsFlyMode = 0

"配置airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

"配置smart tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

"设置主题
let g:airline_theme='bubblegum'

"配置YCM
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/usr/bin/python3'
set completeopt=menu,menuone              "42,43行设置不打开函数原型预览窗口
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0         "设置不显示语法检查信息
let g:ycm_complete_in_strings = 1

"let g:ycm_semantic_triggers={               
"	\ 'c,cpp,python': ['re!\w{2}'],
"	\ }                                   "设置输入两个字符后自动防进行c的语义补全 

let g:ycm_filetype_whitelist = {         
	\ "c":1,                              
	\ "cpp":1,
	\ "python":1,
	\ }                                   "设置白名单，编辑白名单之外的文件时不用分析

"配置asyncrun
let g:asyncrun_open = 6                   "设置quickfik窗口高6行
nnoremap <F6> :call asyncrun#quickfix_toggle(6)<cr>    
										  "设置F6打开/关闭quickfix窗口
nnoremap <silent> <F9> :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
										  "设置F9编译单个c程序
nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
										  "设置F10运行单个c程序
"配置ale




