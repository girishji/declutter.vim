vim9script

exec "source " .. expand('<sfile>:p:h') .. "/declutter-minimal.vim"

g:colors_name = "declutter"

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
hi Constant	ctermfg=none
hi String	ctermfg=none

#  *Identifier	any variable name
#   Function	function name (also: methods for classes)
hi Identifier	ctermfg=none cterm=none

#  *Statement	any statement
#   Conditional	if, then, else, endif, switch, etc.
#   Repeat		for, do, while, etc.
#   Label		case, default, etc.
#   Operator	"sizeof", "+", "*", etc.
#   Keyword	        any other keyword (class, return, etc.)
#   Exception	try, catch, throw
hi Statement	ctermfg=none
hi link		Operator Delimiter

#  *PreProc	generic Preprocessor
#   Include	preprocessor #include
#   Define		preprocessor #define
#   Macro		same as Define
#   PreCondit	preprocessor #if, #else, #endif, etc.
hi PreProc	ctermfg=none cterm=italic

#  *Type		int, long, char, etc.
#   StorageClass	static, register, volatile, etc.
#   Structure	struct, union, enum, etc.
#   Typedef	A typedef
hi Type		ctermfg=none
hi StorageClass ctermfg=none cterm=italic
hi Typedef      ctermfg=none cterm=italic

#  *Special	any special symbol
#   SpecialChar	special character in a constant
#   Tag		you can use CTRL-] on this
#   Delimiter	character that needs attention
#   SpecialComment	special things inside a comment
#   Debug		debugging statements
hi Special	ctermfg=none
hi Delimiter	ctermfg=3 cterm=none

#  *Underlined	text that stands out, HTML links
hi Underlined   ctermfg=none cterm=underline

#  *Ignore		left blank, hidden  |hl-Ignore|
hi Ignore	ctermfg=none

#  *Error		any erroneous construct
hi link		Error ErrorMsg

hi Title	ctermfg=3 cterm=bold
