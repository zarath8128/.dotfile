:set nocp
:set number
:set cindent
:set title
:set showcmd
:set tabstop=4
:set shiftwidth=4
:set encoding=utf-8
:set fileencodings=iso-2022-jp,cp932,utf-8,sjis,euc-jp,ucs-bom,latin1
syntax on

:set foldmethod=syntax
highlight Folded gui=bold term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey30 guifg=Grey80

"vim like binary editor
augroup BinaryEditor
	autocmd!
	autocmd BufReadPre *.bin let &binary = 1
	autocmd BufReadPost * if &binary | silent %!xxd -g 1
	autocmd BufReadPost * set ft=xxd | endif
	autocmd BufWritePre * if &binary | %!xxd -r | endif
	autocmd BufWritePost * if &binary | silent %!xxd -g 1
	autocmd BufWritePost * set nomd | endif
augroup END

:set wildmenu
:set wildmode=longest,full
":set shellpipe=\|&\ iconv\ -t\ utf-8\ >\ %s
:copen
