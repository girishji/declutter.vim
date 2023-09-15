vim9script

exec $"source {expand('<sfile>:p:h')}/declutter-minimal.vim"

g:colors_name = "declutter"

# Use 'src' as base and substitute attributes for 'grp' group
def Substitute(grp: string, src: string, attr: dict<any>)
    var gnum = src->hlID()
    if gnum == 0
        return
    endif
    var cmd = ''
    var fg = gnum->synIDattr('fg', 'cterm')
    cmd = $'{cmd} ctermfg=' .. (attr->has_key('ctermfg') ? attr['ctermfg'] : fg->empty() ? 'none' : fg)
    var bg = gnum->synIDattr('bg', 'cterm')
    cmd = $'{cmd} ctermbg=' .. (attr->has_key('ctermbg') ? attr['ctermbg'] : bg->empty() ? 'none' : bg)
    if attr->has_key('cterm')
        cmd = $'{cmd} cterm=' .. attr['cterm']
    endif
    if cmd != ''
        exec $'hi {grp} {cmd}'
    endif
enddef

# Stylize font
hi Identifier	cterm=bold
hi Statement	cterm=italic
# Substitute('Operator', 'Statement', {cterm: 'none'})
hi PreProc	cterm=italic

hi Special ctermfg=10

# help files
if &background == 'dark'
    Substitute('String', 'Constant', {ctermfg: 14, ctermbg: 236})
endif
Substitute('helpHyperTextJump', 'Identifier', {cterm: 'underline'})
Substitute('helpHeader', 'PreProc', {cterm: 'bold'})

# Python
exec $'hi default pythonOperator2 ctermfg={&background == "dark" ? 15 : 11}'
hi default link pythonBracket pythonOperator2
hi default link pythonParen pythonOperator2
hi link pythonFunctionCall Function

# XXX following does not work
hi pythonAttribute ctermfg=13
# hi pythonAttribute2 ctermfg=13

# Generic syntax
# https://vimdoc.sourceforge.net/htmldoc/syntax.html
#    *Comment	any comment
# hi comment cterm=italic

#  *Constant	any constant
#   String		a string constant: "this is a string"
#   Character	a character constant: 'c', '\n'
#   Number		a number constant: 234, 0xff
#   Boolean	a boolean constant: TRUE, false
#   Float		a floating point constant: 2.3e10
# hi Constant	ctermfg=none
# hi String	ctermfg=none

#  *Identifier	any variable name
#   Function	function name (also: methods for classes)
# hi Identifier	ctermfg=none cterm=none

#  *Statement	any statement
#   Conditional	if, then, else, endif, switch, etc.
#   Repeat		for, do, while, etc.
#   Label		case, default, etc.
#   Operator	"sizeof", "+", "*", etc.
#   Keyword	        any other keyword (class, return, etc.)
#   Exception	try, catch, throw
# hi Statement	ctermfg=none
# hi Operator	ctermfg=3 cterm=none

#  *PreProc	generic Preprocessor
#   Include	preprocessor #include
#   Define		preprocessor #define
#   Macro		same as Define
#   PreCondit	preprocessor #if, #else, #endif, etc.
# hi PreProc	ctermfg=none cterm=italic

#  *Type		int, long, char, etc.
#   StorageClass	static, register, volatile, etc.
#   Structure	struct, union, enum, etc.
#   Typedef	A typedef
# hi Type		ctermfg=none
# hi StorageClass ctermfg=none cterm=italic
# hi Typedef      ctermfg=none cterm=italic

#  *Special	any special symbol
#   SpecialChar	special character in a constant
#   Tag		you can use CTRL-] on this
#   Delimiter	character that needs attention
#   SpecialComment	special things inside a comment
#   Debug		debugging statements
# hi Special	ctermfg=none
# hi Delimiter	ctermfg=3 cterm=none

#  *Underlined	text that stands out, HTML links
# hi Underlined   ctermfg=none cterm=underline

#  *Ignore		left blank, hidden  |hl-Ignore|
# hi Ignore	ctermfg=none

#  *Error		any erroneous construct
# hi link		Error ErrorMsg

# hi Title	ctermfg=3 cterm=bold
