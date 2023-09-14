vim9script

# https://github.com/vim-python/python-syntax/blob/master/syntax/python.vim

syn keyword pythonOperator      and in is not or
syn match pythonOperator2       '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!=\|:='
syn match pythonParen           '\V(\|)'
syn match pythonBracket         '\V[\|]\|{\|}'

syn match pythonFunctionCall '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\ze\%(\s*(\)'

syn keyword pythonStatement   as nonlocal
syn match   pythonStatement   '\v\.@<!<await>'
# \(%  are used to add more patterns, same as \(\), see :h /\(
syn match   pythonFunction    '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*' display contained
syn match   pythonStatement   '\<async\s\+def\>' nextgroup=pythonFunction skipwhite
syn match   pythonStatement   '\<async\s\+with\>'
syn match   pythonStatement   '\<async\s\+for\>'
syn cluster pythonExpression contains=pythonStatement,pythonRepeat,pythonConditional,pythonOperator,pythonNumber,pythonHexNumber,pythonOctNumber,pythonBinNumber,pythonFloat,pythonString,pythonFString,pythonRawString,pythonRawFString,pythonBytes,pythonBoolean,pythonNone,pythonSingleton,pythonBuiltinObj,pythonBuiltinFunc,pythonBuiltinType,pythonClassVar

# syn match pythonAttribute2    '\V\w\+.\zs\w\+\ze\([\)\?'
