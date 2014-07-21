:set nocp
:set number
:set cindent
:set title
:set showcmd
:set tabstop=4
:set shiftwidth=4
:set encoding=utf-8
:set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,ucs-bom,latin1,utf-8
syntax on

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
