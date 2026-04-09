function! _c64cosmin_ProjCloseHiddenBuffers()
    for buf in getbufinfo()
        if len(buf.windows) == 0 && len(get(buf, "popups", [])) == 0
            exec 'bw! ' . buf.bufnr
        endif
    endfor
endfun

function! _c64cosmin_ProjLoad()
	call _c64cosmin_ProjCloseHiddenBuffers()
	call feedkeys(":source ~/.vim/session/")
endfunction

function! _c64cosmin_ProjSave()
	call _c64cosmin_ProjCloseHiddenBuffers()
	call system("cp ~/.vim/session/* ~/.vim/sessionbackup")
	exec ":mksession! ~/.vim/session/last.vim"
	call feedkeys(":mksession! ~/.vim/session/")
endfunction

function! _c64cosmin_ProjName()
	return finddir('.git/..', expand('%:p:h').';')
endfunction

function! _c64cosmin_ProjAutoSave()
	call _c64cosmin_ProjCloseHiddenBuffers()
	exec ":mksession! ~/.vim/session/auto.vim"
endfunction

nnoremap <Leader>pp :call _c64cosmin_ProjCloseHiddenBuffers()<CR>:source ~/.vim/session/auto.vim<CR>
nnoremap <Leader>po :call _c64cosmin_ProjLoad()<CR>
nnoremap <Leader>pw :call _c64cosmin_ProjSave()<CR>

autocmd VimLeave * call _c64cosmin_ProjAutoSave()
