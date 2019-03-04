highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'foo-mrrobot'
set background=dark


" Helper function to set up highlight executions
function! s:hi(group, foreground, background, fontStyle)
  exec  "highlight "  . a:group
    \ . " guifg="     . a:foreground
    \ . " guibg="     . a:background
    \ . " gui="       . a:fontStyle
endfunction


" Text style
let s:italic      =   'italic'
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'


" Background
let s:bg = '#121212'


" Colors base
let s:primary       =   '#afff87'
let s:secondary     =   ''

let s:source        =   '#bcbcbc'
let s:keyword       =   s:primary
let s:structure     =   s:primary
let s:scalar        =   '#ff87fc'
let s:string        =   '#fffe7a'

let s:comment       =   '#4e4e4e'


" Syntax highlighting groups
call s:hi('Comment', s:comment, s:bg, s:italic)
call s:hi('Constant', s:primary, s:bg, s:none)
call s:hi('String', s:string, s:bg, s:none)
call s:hi('Character', s:string, s:bg, s:none)
call s:hi('Number', s:scalar, s:bg, s:none)
call s:hi('Boolean', s:scalar, s:bg, s:none)
call s:hi('Float', s:scalar, s:bg, s:none)

call s:hi('Identifier', s:primary, s:bg, s:none)
call s:hi('Function', s:keyword, s:bg, s:none)

call s:hi('Statement', s:keyword, s:bg, s:none)
call s:hi('Conditional', s:keyword, s:bg, s:none)
call s:hi('Repeat', s:keyword, s:bg, s:none)
call s:hi('Label', s:primary, s:bg, s:none)
call s:hi('Operator', s:primary, s:bg, s:none)
call s:hi('Keyword', s:keyword, s:bg, s:none)
call s:hi('Exception', s:primary, s:bg, s:italic)

call s:hi('PreProc', s:source, s:bg, s:italic)
call s:hi('Include', s:primary, s:bg, s:italic)
call s:hi('Define', s:source, s:bg, s:italic)
call s:hi('Macro', s:source, s:bg, s:italic)
call s:hi('PreCondit', s:primary, s:bg, s:italic)

call s:hi('Type', s:primary, s:bg, s:none)
call s:hi('StorageClass', s:primary, s:bg, s:none)
call s:hi('Structure', s:primary, s:bg, s:none)
call s:hi('Typedef', s:primary, s:bg, s:none)

call s:hi('Special', s:source, s:bg, s:none)
call s:hi('SpecialChar', s:primary, s:bg, s:none)
call s:hi('Delimiter', s:primary, s:bg, s:none)
call s:hi('SpecialComment', s:comment, s:bg, s:none)
call s:hi('Debug', s:primary, s:bg, s:none)
call s:hi('Underlined', s:source, s:bg, s:underline)
call s:hi('Error', s:primary, s:bg, s:underline)
call s:hi('Todo', s:primary, s:bg, s:none)

call s:hi('Directory', 'White', s:bg, s:none)
call s:hi('CursorLine', s:primary, s:bg, s:none)
call s:hi('MatchParen', 'White', s:bg, s:none)
call s:hi('ColorColumn', s:primary, '#262626', s:none)


" Interface highlighting
call s:hi('Normal', s:source, s:bg, s:none)
call s:hi('Visual', s:none, s:comment, s:none)
call s:hi('Cursor', s:none, s:bg, s:none)
call s:hi('iCursor', s:none, s:bg, s:none)
call s:hi('LineNr', s:comment, s:bg, s:none)
call s:hi('NonText', s:comment, s:bg, s:none)
call s:hi('CursorLineNr', s:source, s:bg, s:none)
call s:hi('VertSplit', '#262626', s:bg, s:none)


" Git Gutter
call s:hi('GitGutterAdd', s:source, s:bg, s:none)
call s:hi('GitGutterChange', s:source, s:bg, s:none)
call s:hi('GitGutterDelete', s:source, s:bg, s:none)
call s:hi('GitGutterChangeDelete', s:source, s:bg, s:none)
call s:hi('SignColumn', s:source, s:bg, s:none)


" Python syntax highlighting
call s:hi('pythonFunction', 'white', s:bg, s:none)
call s:hi('pythonBuiltin', 'white', s:bg, s:italic)
call s:hi('pythonDecoratorName', s:scalar, s:bg, s:italic)
call s:hi('pythonDecorator', s:scalar, s:bg, s:italic)


" Vimscript syntax highlighting
call s:hi('vimOption', s:source, s:bg, s:none)


" NERDTree
call s:hi('NERDTreeClosable', s:primary, s:bg, s:none)
call s:hi('NERDTreeOpenable', s:primary, s:bg, s:none)


" Hacks
hi CursorLine cterm=none
hi Identifier cterm=none

