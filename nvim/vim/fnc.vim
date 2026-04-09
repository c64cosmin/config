function! ToggleExplorer()
    "find if there is a netrw
    let netrw_winid = 0
    for winid in gettabinfo(tabpagenr())[0].windows
        if getwinvar(winid, "&ft") == "netrw"
            let netrw_winid = winid
        endif
    endfor

    "if there is no netrw
    if netrw_winid == 0
        exec 'Vexplore ' . expand('%:p:h')
        wincmd H
        exec 'vertical resize 50'
    else
        "if we are on the netrw
        if win_getid() == netrw_winid
            exec 'q'
        else
            call win_gotoid(netrw_winid)
        endif
    endif
endfun
nmap <C-e> :call ToggleExplorer()<CR>

"undotree
function! ToggleUndoTree()
    "find if there is a undotree
    let undotree_winid = 0
    for winid in gettabinfo(tabpagenr())[0].windows
        if getwinvar(winid, "&ft") == "undotree"
            let undotree_winid = winid
        endif
    endfor

    "if there is no undotree
    if undotree_winid == 0
        let currentwindow = win_getid()
        exec 'UndotreeToggle'
        exec 'UndotreeFocus'
        exec 'vertical resize 40'
        exec 'call win_gotoid(' . currentwindow . ')'
    else
        "if we are on the netrw
        if win_getid() == undotree_winid
            exec 'UndotreeToggle'
        else
            exec 'UndotreeFocus'
        endif
    endif
endfun
nmap <C-u> :call ToggleUndoTree()<CR>

"Terminal
function! ToggleTerminal()
    "find if there is a terminal
    let terminal_winid = 0
    for winid in gettabinfo(tabpagenr())[0].windows
        if getwinvar(winid, "&buftype") == "terminal"
            let terminal_winid = winid
        endif
    endfor

    "if there is no terminal
    if terminal_winid == 0
        let $VIM_DIR=expand('%:p:h')
        exec ':vert term'
        call feedkeys("cd $VIM_DIR;clear\<CR>")
        wincmd J
        exec 'resize 10'
    else
        "if we are on the terminal
        if win_getid() != terminal_winid
            call win_gotoid(terminal_winid)
        endif
    endif
endfun
nnoremap <C-b> :call ToggleTerminal()<CR>

"Formatter
function! DoFormatting()
    if &ft == "typescript"
        exec "Prettier"
    elseif &ft == "rust"
        exec "Rustfmt"
    endif
endfunction
nnoremap <Leader>ep :call DoFormatting()<CR>

"harpwn
let g:HarpwnLoaded = 0
autocmd SessionLoadPost * let g:HarpwnLoaded = 0
autocmd VimLeave * exec "HarpwnOpen" | exec "HarpwnSave"
function! HarpwnMenuOpen()
    if g:HarpwnLoaded == 0
        call _c64cosmin_Harpwn_ReadSession()
        let g:HarpwnLoaded = 1
    endif
    call _c64cosmin_Harpwn_Menu()
endfunction

function! GetGitRoot()
    let l:git_root = systemlist('"git -C ' . expand('%:p:h') . ' rev-parse --show-toplevel 2>/dev/null"')
    let l:git_root = empty(l:git_root) ? "" : l:git_root[0]

    if empty(l:git_root)
        return ""
    endif
    return l:git_root
endfunction
