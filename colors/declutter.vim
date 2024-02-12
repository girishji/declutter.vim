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

# modify 'quiet' theme

g:colors_name = "declutter"

if &background ==# 'dark'
    highlight Normal ctermbg=None
    highlight Comment ctermfg=244
    highlight LineNr ctermfg=244
    highlight helpExample ctermfg=248
    highlight helpCommand ctermfg=248 ctermbg=235
    highlight LspSigActiveParameter ctermfg=207
    highlight statusline ctermbg=none ctermfg=248 guibg=Grey35 cterm=none
    highlight statuslinenc ctermbg=none ctermfg=242 guibg=Grey35 cterm=none
    highlight user1 ctermbg=none ctermfg=255 cterm=none
    highlight user2 ctermbg=none ctermfg=253 cterm=none
    highlight user3 ctermbg=none ctermfg=253 cterm=none
    highlight user4 ctermbg=none ctermfg=3 cterm=bold
    highlight FilterMenuMatch ctermfg=209 cterm=none
    highlight PopupBorderHighlight ctermfg=244
    highlight PmenuKind ctermfg=246 ctermbg=8 cterm=none
    highlight! link PmenuKindSel PmenuSel
    highlight PmenuExtra ctermfg=246 ctermbg=8 cterm=none
    highlight! link PmenuExtraSel PmenuSel
    highlight Pmenu ctermfg=none ctermbg=8 cterm=none
    highlight PmenuSel ctermfg=none ctermbg=24
    highlight PmenuSbar ctermfg=none ctermbg=8
    highlight PmenuThumb ctermfg=none ctermbg=240
    highlight CursorLine ctermfg=NONE ctermbg=8 cterm=NONE
    highlight clear LspDiagInlineWarning
else
    highlight statusline cterm=none
    highlight Comment cterm=none ctermfg=242
    highlight Pmenu ctermbg=250
    highlight PmenuThumb ctermfg=none ctermbg=244
    highlight PmenuKind ctermfg=242 ctermbg=250 cterm=none
    highlight! link PmenuKindSel PmenuSel
    highlight PmenuExtra ctermfg=242 ctermbg=250 cterm=none
    highlight! link PmenuExtraSel PmenuSel
    # SpecialKey is used for 'listchars'
    highlight SpecialKey ctermfg=248
    if exists('g:popupthumbhighlight')
        g:popupthumbhighlight = 'statuslinenc'
    endif
    highlight user1 cterm=bold,reverse
    highlight user4 cterm=bold,reverse
    highlight helpCommand ctermbg=254 ctermfg=240
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

def! g:DeclutterBrightenBoldFont()
    for hg in execute('highlight')->split("\n")
        var items = hg->split()
        if &background ==# 'dark' && items->index('ctermfg=253') != -1
            var cidx = items->indexof((_, v) => v =~? 'bold')
            if cidx != -1
                var bgidx = items->indexof((_, v) => v =~? 'ctermbg')
                exec $'hi {items[0]} ctermfg=231 {items[cidx]} {bgidx != -1 ? items[bgidx] : ""}'
            endif
            # &background 'light' already has black bg, not much can be done
        endif
    endfor
enddef
