if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au BufNewFile,BufRead *.{rb,js}   setlocal tabstop=2 shiftwidth=2 expandtab
  au BufNewFile,BufRead *.{php}   setlocal tabstop=4 shiftwidth=4 expandtab
augroup END
