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

exec $"source $VIMRUNTIME/colors/quiet.vim"

g:colors_name = "declutter"

## copied from colorscheme 'quiet'
if &background ==# 'dark'
    hi Normal ctermfg=253 ctermbg=16 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CurSearch ctermfg=207 ctermbg=16 cterm=reverse
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLineNr ctermfg=253 ctermbg=236 cterm=NONE
    hi DiffAdd ctermfg=34 ctermbg=16 cterm=reverse
    hi DiffChange ctermfg=110 ctermbg=16 cterm=reverse
    hi DiffDelete ctermfg=167 ctermbg=16 cterm=reverse
    hi DiffText ctermfg=176 ctermbg=16 cterm=reverse
    hi Directory ctermfg=253 ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=242 ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=253 ctermbg=16 cterm=reverse
    hi FoldColumn ctermfg=242 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=242 ctermbg=16 cterm=NONE
    hi IncSearch ctermfg=214 ctermbg=16 cterm=reverse
    hi LineNr ctermfg=240 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=199 ctermbg=NONE cterm=bold
    hi ModeMsg ctermfg=253 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=253 ctermbg=NONE cterm=NONE
    hi NonText ctermfg=242 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=16 ctermbg=248 cterm=NONE
    hi PmenuExtra ctermfg=16 ctermbg=248 cterm=NONE
    hi PmenuKind ctermfg=16 ctermbg=248 cterm=bold
    hi PmenuSbar ctermfg=242 ctermbg=240 cterm=NONE
    hi PmenuSel ctermfg=16 ctermbg=253 cterm=NONE
    hi PmenuExtraSel ctermfg=16 ctermbg=253 cterm=NONE
    hi PmenuKindSel ctermfg=16 ctermbg=253 cterm=bold
    hi PmenuThumb ctermfg=253 ctermbg=253 cterm=NONE
    hi Question ctermfg=253 ctermbg=NONE cterm=NONE
    hi QuickFixLine ctermfg=207 ctermbg=16 cterm=reverse
    hi Search ctermfg=39 ctermbg=16 cterm=reverse
    hi SignColumn ctermfg=253 ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=242 ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=161 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=32 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=176 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=16 ctermbg=253 cterm=bold
    hi StatusLineNC ctermfg=242 ctermbg=16 cterm=reverse
    hi TabLine ctermfg=242 ctermbg=16 cterm=reverse
    hi TabLineFill ctermfg=253 ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=16 ctermbg=253 cterm=bold
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=242 ctermbg=16 cterm=NONE
    hi Visual ctermfg=214 ctermbg=16 cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=236 cterm=NONE
    hi WarningMsg ctermfg=253 ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=39 ctermbg=16 cterm=bold
    hi Comment ctermfg=242 ctermbg=NONE cterm=bold
    hi Constant ctermfg=253 ctermbg=NONE cterm=NONE
    hi Error ctermfg=197 ctermbg=16 cterm=bold,reverse
    hi Identifier ctermfg=253 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=253 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=253 ctermbg=NONE cterm=NONE
    hi Special ctermfg=253 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=253 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=49 ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=253 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=253 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=16 ctermbg=154 cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=16 cterm=NONE
    hi ToolbarButton ctermfg=253 ctermbg=16 cterm=bold
else
    # Light background
    hi Normal ctermfg=16 ctermbg=188 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CurSearch ctermfg=207 ctermbg=16 cterm=reverse
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=255 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=255 cterm=NONE
    hi CursorLineNr ctermfg=16 ctermbg=255 cterm=NONE
    hi DiffAdd ctermfg=114 ctermbg=16 cterm=reverse
    hi DiffChange ctermfg=146 ctermbg=16 cterm=reverse
    hi DiffDelete ctermfg=174 ctermbg=16 cterm=reverse
    hi DiffText ctermfg=176 ctermbg=16 cterm=reverse
    hi Directory ctermfg=16 ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=241 ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=16 ctermbg=188 cterm=reverse
    hi FoldColumn ctermfg=241 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=241 ctermbg=188 cterm=NONE
    hi IncSearch ctermfg=214 ctermbg=16 cterm=reverse
    hi LineNr ctermfg=248 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=199 ctermbg=188 cterm=bold
    hi ModeMsg ctermfg=16 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=16 ctermbg=NONE cterm=NONE
    hi NonText ctermfg=241 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=16 ctermbg=248 cterm=NONE
    hi PmenuExtra ctermfg=16 ctermbg=248 cterm=NONE
    hi PmenuKind ctermfg=16 ctermbg=248 cterm=bold
    hi PmenuSbar ctermfg=16 ctermbg=254 cterm=NONE
    hi PmenuSel ctermfg=188 ctermbg=16 cterm=NONE
    hi PmenuExtraSel ctermfg=188 ctermbg=16 cterm=NONE
    hi PmenuKindSel ctermfg=188 ctermbg=16 cterm=bold
    hi PmenuThumb ctermfg=16 ctermbg=16 cterm=NONE
    hi Question ctermfg=16 ctermbg=NONE cterm=NONE
    hi QuickFixLine ctermfg=207 ctermbg=16 cterm=reverse
    hi Search ctermfg=39 ctermbg=16 cterm=reverse
    hi SignColumn ctermfg=16 ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=241 ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=124 ctermbg=188 cterm=underline
    hi SpellCap ctermfg=25 ctermbg=188 cterm=underline
    hi SpellLocal ctermfg=90 ctermbg=188 cterm=underline
    hi SpellRare ctermfg=30 ctermbg=188 cterm=underline
    hi StatusLine ctermfg=255 ctermbg=16 cterm=bold
    hi StatusLineNC ctermfg=16 ctermbg=248 cterm=NONE
    hi TabLine ctermfg=16 ctermbg=248 cterm=NONE
    hi TabLineFill ctermfg=16 ctermbg=188 cterm=NONE
    hi TabLineSel ctermfg=255 ctermbg=16 cterm=bold
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=241 ctermbg=188 cterm=NONE
    hi Visual ctermfg=214 ctermbg=16 cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=255 cterm=NONE
    hi WarningMsg ctermfg=16 ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=16 ctermbg=255 cterm=bold
    hi Comment ctermfg=16 ctermbg=NONE cterm=bold
    hi Constant ctermfg=16 ctermbg=NONE cterm=NONE
    hi Error ctermfg=197 ctermbg=16 cterm=bold,reverse
    hi Identifier ctermfg=16 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=16 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=16 ctermbg=NONE cterm=NONE
    hi Special ctermfg=16 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=16 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=49 ctermbg=16 cterm=bold,reverse
    hi Type ctermfg=16 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=16 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=16 ctermbg=154 cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=188 cterm=NONE
    hi ToolbarButton ctermfg=16 ctermbg=188 cterm=bold
endif

# modification

if &background ==# 'dark'
    highlight  Normal                   ctermbg=None
    highlight  Comment                  ctermfg=244
    highlight  LineNr                   ctermfg=244
    highlight  helpExample              ctermfg=248
    highlight  helpCommand ctermfg=248   ctermbg=235
    highlight  LspSigActiveParameter    ctermfg=207
    highlight  statusline    ctermbg=none  ctermfg=248  guibg=Grey35  cterm=none
    highlight  statuslinenc  ctermbg=none  ctermfg=242  guibg=Grey35  cterm=none
    highlight  user1         ctermbg=none  ctermfg=255  cterm=none
    highlight  user2         ctermbg=none  ctermfg=253     cterm=none
    highlight  user3         ctermbg=none  ctermfg=253     cterm=none
    highlight  user4         ctermbg=none  ctermfg=3     cterm=bold
    highlight FilterMenuMatch ctermfg=209 cterm=none
    highlight PopupBorderHighlight ctermfg=244
    highlight  PmenuKind       ctermfg=246  ctermbg=235   cterm=none
    highlight! link PmenuKindSel    PmenuSel
    highlight  PmenuExtra       ctermfg=246  ctermbg=235   cterm=none
    highlight! link PmenuExtraSel   PmenuSel
    highlight  Pmenu       ctermfg=none  ctermbg=235   cterm=none
    highlight  PmenuSel    ctermfg=none  ctermbg=24
    highlight  PmenuSbar   ctermfg=none  ctermbg=235
    highlight  PmenuThumb  ctermfg=none  ctermbg=240
else
    highlight statusline cterm=none
    highlight Comment  cterm=none ctermfg=242
    highlight Pmenu ctermbg=250
    highlight PmenuThumb ctermfg=none ctermbg=244
    highlight  PmenuKind       ctermfg=242  ctermbg=250   cterm=none
    highlight! link PmenuKindSel    PmenuSel
    highlight  PmenuExtra       ctermfg=242  ctermbg=250   cterm=none
    highlight! link PmenuExtraSel   PmenuSel
    # SpecialKey is used for 'listchars'
    highlight SpecialKey ctermfg=248
    if exists('g:popupthumbhighlight')
        g:popupthumbhighlight  = 'statuslinenc'
    endif
    highlight  user1         cterm=bold,reverse
    highlight  user4         cterm=bold,reverse
    highlight  helpCommand ctermbg=254 ctermfg=240
endif

highlight PreProc cterm=bold

highlight helpHeader cterm=bold
highlight link helpNote Normal
highlight link helpHyperTextEntry Underlined
highlight link helpHyperTextJump Underlined

highlight link manReference Underlined
highlight manSectionHeading cterm=bold
highlight manSubHeading cterm=bold
highlight manOptionDesc cterm=bold
highlight manLongOptionDesc cterm=bold
highlight manFooter cterm=italic
highlight manHeader cterm=italic
highlight manCFuncDefinition cterm=bold

