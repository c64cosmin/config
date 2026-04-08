source ~/.config/nvim/vim/hypermildmine.vim
if has("gui_running")
    let s:bg=" guibg="
    let s:fg=" guifg="
    let s:tx=" gui="

    let s:color_b0="#101020"
    let s:color_b1="#202040"
    let s:color_b2="#404080"
    let s:color_b3="#6060a0"
    let s:color_b4="#70a0f0"
    let s:color_g0="#305030"
    let s:color_g1="#38a038"
    let s:color_g2="#40f040"
    let s:color_r0="#601010"
    let s:none  ="NONE"
    let s:red   ="#ff0000"
    let s:black ="#000000"
    let s:white ="#ffffff"
    let s:bggray="#2a1a1a"
    let s:bgray ="#2a2a2a"

    let s:diff_add_bg="#002200"
    let s:diff_chg_bg="#000044"
    let s:diff_del_fg="#660000"

    let s:rederror="#a00000"
else
    set t_Co=256

    let s:bg=" ctermbg="
    let s:fg=" ctermfg="
    let s:tx=" cterm="

    let s:color_b0="16"
    let s:color_b1="17"
    let s:color_b2="25"
    let s:color_b3="26"
    let s:color_b4="39"
    let s:color_g0="22"
    let s:color_g1="34"
    let s:color_g2="40"
    let s:color_r0="52"
    let s:none  ="NONE"
    let s:red   ="196"
    let s:black ="0"
    let s:white ="231"
    let s:bggray="234"
    let s:bgray ="235"

    let s:diff_add_bg="52"
    let s:diff_chg_bg="17"
    let s:diff_del_fg="52"

    let s:rederror="124"
endif

exec "hi Pmenu            " . s:bg . s:color_b1 . s:fg . s:color_b3
exec "hi PmenuSel         " . s:bg . s:color_b2 . s:fg . s:color_b4
exec "hi Title            " . s:bg . s:none     . s:fg . s:color_b4
exec "hi TabLineFill      "                     . s:fg . s:color_b1
exec "hi TabLine          " . s:bg . s:color_b0 . s:fg . s:color_b3
exec "hi TabLineSel       " . s:bg . s:color_b2 . s:fg . s:color_b4
exec "hi VertSplit        " . s:bg . s:color_b1 . s:fg . s:color_b4 . s:tx . "none"
exec "hi Folded           " . s:bg . s:color_b1 . s:fg . s:color_b4 . s:tx . "bold"
exec "hi StatusLine       " . s:bg . s:color_b4 . s:fg . s:black    . s:tx . "bold"
exec "hi StatusLineNC     " . s:bg . s:color_b2 . s:fg . s:black    . s:tx . "none"
exec "hi StatusLineTerm   " . s:bg . s:color_g1 . s:fg . s:black    . s:tx . "bold"
exec "hi StatusLineTermNC " . s:bg . s:color_g0 . s:fg . s:black    . s:tx . "none"
exec "hi LineNr           " . s:bg . s:black    . s:fg . s:bgray
exec "hi Visual           " . s:bg . s:color_g0 . s:fg . s:color_g1 . s:tx . "bold"
exec "hi IncSearch        " . s:bg . s:color_g1 . s:fg . s:color_g2
exec "hi Search           " . s:bg . s:color_g0 . s:fg . s:color_g1
exec "hi Cursor           " . s:bg . s:color_g1 . s:fg . s:color_g2 . s:tx . "bold"
exec "hi CursorLine       " . s:bg . s:bggray
exec "hi EndOfBuffer      " . s:bg . s:black    . s:fg . s:color_r0 . s:tx . "bold"
exec "hi SpellBad         " . s:bg . s:rederror . s:fg . s:black

exec "hi EasyMotionTarget " . s:fg . s:red                          . s:tx . "bold"
exec "hi EasyMotionShade  " . s:fg . s:color_b1

exec "hi! default link CocMenuSel PmenuSel"
exec "hi! CocListLine     " . s:fg . s:white

if &diff
    exec "hi DiffAdd    " . s:fg . s:none        . s:bg . s:diff_add_bg
    exec "hi DiffChange " . s:fg . s:none        . s:bg . s:diff_chg_bg
    exec "hi DiffText   " . s:fg . s:none        . s:bg . s:none
    exec "hi DiffDelete " . s:fg . s:diff_del_fg . s:bg . s:black
    exec "hi DiffLine   " . s:fg . s:red
endif
