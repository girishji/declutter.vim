" Monochrome color scheme for Vim >= v9.0

if !has('vim9script') || v:version < 900
  " Needs Vim version 9.0 and above
  finish
endif

vim9script

highlight clear

if exists("syntax_on")
  syntax reset
endif

g:colors_name = "declutter-minimal"

var bg: number = &background == 'dark' ? 0 : 7
var fg: number = &background == 'dark' ? 7 : 0
var bg2: number = &background == 'dark' ? 8 : 15 
var fg2: number = &background == 'dark' ? 15 : 8

exec $'hi! search      ctermfg={fg2} ctermbg={bg} cterm=reverse'
exec $'hi! matchparen  ctermfg=6    ctermbg={bg} cterm=none'
exec $'hi! cursorline  ctermfg=none ctermbg={bg} cterm=none'
exec $'hi! DiffAdd     ctermfg=2    ctermbg={bg}'
exec $'hi! DiffChange  ctermfg=3    ctermbg={bg}'
exec $'hi! DiffDelete  ctermfg=1    ctermbg={bg}'
exec $'hi! DiffText    ctermfg=5    ctermbg={bg}'
hi! incsearch ctermfg=5 ctermbg=none cterm=reverse
hi! link signcolumn linenr
hi! link foldcolumn signcolumn
exec 'hi! linenr    ctermfg=' .. fg .. ' ctermbg=none'

exec $'hi pmenu ctermfg=none ctermbg={bg2} cterm=none'
hi PmenuSel     ctermfg=2       ctermbg=none cterm=reverse
hi PmenuSbar    ctermfg=none    ctermbg=none
hi PmenuThumb   ctermfg=none    ctermbg=none cterm=reverse

if &background ==? 'light'
    hi comment cterm=italic
else
    hi comment ctermfg=6 cterm=italic
    hi special ctermfg=15
    hi type ctermfg=10
    hi preproc ctermfg=14
endif
