highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'foo-abyss'
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
let s:bg = '#000c18'


" Colors base
let s:primary       =   '#9966b8'
let s:secondary     =   '#225588'

let s:source        =   '#bbbbbb'
let s:keyword       =   s:primary
let s:structure     =   s:primary
let s:scalar        =   '#f280d0'
let s:string        =   '#22aa44'

let s:comment       =   '#384887'


" Syntax highlighting groups
call s:hi('Comment', s:comment, s:bg, s:italic)
call s:hi('Constant', s:primary, s:bg, s:none)
call s:hi('String', s:string, s:bg, s:none)
call s:hi('Character', s:string, s:bg, s:none)
call s:hi('Number', s:scalar, s:bg, s:none)
call s:hi('Boolean', s:scalar, s:bg, s:none)
call s:hi('Float', s:scalar, s:bg, s:none)

call s:hi('Identifier', s:primary, s:bg, s:none)
call s:hi('Function', s:primary, s:bg, s:none)

call s:hi('Statement', s:secondary, s:bg, s:none)
call s:hi('Conditional', s:keyword, s:bg, s:none)
call s:hi('Repeat', s:keyword, s:bg, s:none)
call s:hi('Label', s:primary, s:bg, s:none)
call s:hi('Operator', s:primary, s:bg, s:none)
call s:hi('Keyword', s:primary, s:bg, s:none)
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

call s:hi('Directory', s:primary, s:bg, s:none)
call s:hi('CursorLine', s:none, '#001a33', s:none)
call s:hi('MatchParen', 'White', s:bg, s:none)
call s:hi('ColorColumn', s:source, '#001a33', s:none)


" Interface highlighting
call s:hi('Normal', s:source, s:bg, s:none)
call s:hi('Visual', s:none, s:comment, s:none)
call s:hi('Cursor', s:none, s:bg, s:none)
call s:hi('iCursor', s:none, s:bg, s:none)
call s:hi('LineNr', '#406385', s:bg, s:none)
call s:hi('NonText', s:comment, s:bg, s:none)
call s:hi('CursorLineNr', '#80a2c2', s:bg, s:none)
call s:hi('VertSplit', '#001a33', s:bg, s:none)
call s:hi('Title', '#ddbb88', s:bg, s:none)


" Git Gutter
call s:hi('GitGutterAdd', s:source, s:bg, s:none)
call s:hi('GitGutterChange', s:source, s:bg, s:none)
call s:hi('GitGutterDelete', s:source, s:bg, s:none)
call s:hi('GitGutterChangeDelete', s:source, s:bg, s:none)
call s:hi('SignColumn', s:source, s:bg, s:none)


" Python syntax highlighting
call s:hi('pythonFunction', '#ddbb88', s:bg, s:none)
call s:hi('pythonBuiltin', '#ddbb88', s:bg, s:italic)
call s:hi('pythonDecoratorName', s:scalar, s:bg, s:italic)
call s:hi('pythonDecorator', s:scalar, s:bg, s:italic)
call s:hi('jinjaStatement', s:scalar, s:bg, s:none)
call s:hi('jinjaTagDelim', s:scalar, s:bg, s:none)
call s:hi('jinjaBlockName', s:source, s:bg, s:none)
call s:hi('jinjaVariable', s:source, s:bg, s:none)
call s:hi('jinjaString', s:string, s:bg, s:none)


" PHP
call s:hi('phpDefine', s:primary, s:bg, s:italic)
call s:hi('phpIdentifier', s:source, s:bg, s:italic)
call s:hi('bladeKeyword', s:scalar, s:bg, s:none)


" Javascript
call s:hi('javaScriptNull', s:scalar, s:bg, s:italic)
call s:hi('javaScriptBraces', s:source, s:bg, s:italic)
call s:hi('javaScriptNumber', s:scalar, s:bg, s:italic)


" HTML
call s:hi('htmlTagName', s:secondary, s:bg, s:none)


" CSS
call s:hi('cssProp', s:source, s:bg, s:italic)
call s:hi('cssBraces', s:source, s:bg, s:italic)


" Ruby
call s:hi('rubyModule', s:primary, s:bg, s:italic)
call s:hi('rubyDefine', s:primary, s:bg, s:italic)
call s:hi('rubyClass', s:primary, s:bg, s:italic)
call s:hi('rubyFunction', s:source, s:bg, s:italic)


" Vimscript syntax highlighting
call s:hi('vimOption', s:source, s:bg, s:none)


" NERDTree
call s:hi('NERDTreeClosable', s:primary, s:bg, s:none)
call s:hi('NERDTreeOpenable', s:primary, s:bg, s:none)


" Hacks
hi CursorLine cterm=none
hi Identifier cterm=none

if has("gui_win32")
    call s:hi('CursorLine', s:source, '#001a33', s:none)
    call s:hi('Cursor', s:source, s:primary, s:none)
endif

