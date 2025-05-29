filetype on
filetype plugin on
syntax on
set laststatus=2
set statusline=%f             " Full file path
set statusline+=\ %y          " File type
set statusline+=\ %m          " Modified flag
set statusline+=%=            " Right-align the remaining items
set statusline+=\ %p%%        " Percentage through the file
set statusline+=\ %l:%c       " Current line and column number

set statusline+=\ %t  " Displays the file name only
set number
set rnu
set mouse+=a

set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0 indentexpr="\t"

"set noexpandtab
"set tabstop=1
""set shiftwidth=1
""set softtabstop=1
"set nosmartindent
"set noautoindent
"set indentexpr=

set bg=light

set incsearch

set hlsearch
highlight Search ctermfg=black ctermbg=yellow guifg=black guibg=yellow

"change cursor to a block in normal mode and a line in insert mode
if has("termguicolors")
	    let &t_SI = "\e[1 q"   " Block blinking cursor in insert mode
			    let &t_EI = "\e[2 q"   " Block cursor on exiting insert mode
					    let &t_SR = "\e[2 q"   " Block cursor in replace mode
endif

map <RightMouse> "+y

set foldmethod=syntax
