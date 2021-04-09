highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'pharo'
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
let s:bg = '#212121'

" Colors base
let s:green         =   '#08b065'
let s:lightgreen    =   '#a7ce67'
let s:lightblue     =   '#66b5bc'
let s:red           =   '#cc7268'

let s:primary       =   s:lightgreen
let s:secondary     =   s:lightgreen

let s:source        =   '#c8d2d3'
let s:keyword       =   s:primary
let s:structure     =   s:primary
let s:scalar        =   '#e4cc46'
let s:string        =   '#ca781e'

let s:comment       =   '#758084'

" Syntax highlighting groups
call s:hi('Comment', s:comment, s:bg, s:none)
call s:hi('Constant', s:primary, s:bg, s:none)
call s:hi('String', s:string, s:bg, s:none)
call s:hi('Character', s:string, s:bg, s:none)
call s:hi('Number', s:scalar, s:bg, s:none)
call s:hi('Boolean', s:scalar, s:bg, s:none)
call s:hi('Float', s:scalar, s:bg, s:none)

call s:hi('Identifier', s:lightblue, s:bg, s:none)
call s:hi('Function', s:lightblue, s:bg, s:none)

call s:hi('Statement', s:secondary, s:bg, s:none)
call s:hi('Conditional', s:keyword, s:bg, s:none)
call s:hi('Repeat', s:keyword, s:bg, s:none)
call s:hi('Label', s:primary, s:bg, s:none)
call s:hi('Operator', s:source, s:bg, s:none)
call s:hi('Keyword', s:primary, s:bg, s:none)
call s:hi('Exception', s:primary, s:bg, s:none)

call s:hi('PreProc', s:primary, s:bg, s:none)
call s:hi('Include', s:primary, s:bg, s:none)
call s:hi('Define', s:source, s:bg, s:none)
call s:hi('Macro', s:primary, s:bg, s:none)
call s:hi('PreCondit', s:primary, s:bg, s:none)

call s:hi('Type', s:lightblue, s:bg, s:none)
call s:hi('StorageClass', s:primary, s:bg, s:none)
call s:hi('Structure', s:primary, s:bg, s:none)
call s:hi('Typedef', s:primary, s:bg, s:none)

call s:hi('Special', s:source, s:bg, s:none)
call s:hi('SpecialChar', s:primary, s:bg, s:none)
call s:hi('Delimiter', s:source, s:bg, s:none)
call s:hi('SpecialComment', s:comment, s:bg, s:none)
call s:hi('Debug', s:primary, s:bg, s:none)
call s:hi('Underlined', s:source, s:bg, s:underline)
call s:hi('Todo', s:scalar, s:bg, s:none)
call s:hi('Error', s:red, s:bg, s:underline)
call s:hi('ErrorMsg', s:red, s:bg, s:none)
call s:hi('Question', s:string, s:bg, s:none)
call s:hi('WarningMsg', s:primary, s:none, s:none)
call s:hi('Search', s:bg, s:source, s:none)

call s:hi('Directory', s:lightblue, s:bg, s:none)
call s:hi('CursorLine', s:none, '#292929', s:none)
call s:hi('CursorColumn', s:none, '#333333', s:none)
call s:hi('MatchParen', s:none, '#474747', s:none)
call s:hi('ColorColumn', s:none, '#292929', s:none)

" Interface highlighting
call s:hi('Normal', s:source, s:bg, s:none)
call s:hi('Visual', s:none, '#393e46', s:none)
call s:hi('Cursor', s:none, s:bg, s:none)
call s:hi('iCursor', s:none, s:bg, s:none)
call s:hi('LineNr', '#525a5c', s:bg, s:none)

call s:hi('NonText', s:comment, s:bg, s:none)
call s:hi('CursorLineNr', s:source, s:bg, s:none)
call s:hi('VertSplit', '#292929', s:bg, s:none)
call s:hi('Title', s:scalar, s:bg, s:none)
call s:hi('Pmenu', s:source, '#373737', s:none)
call s:hi('PmenuSel', s:bg, s:source, s:none)

" Git Gutter
call s:hi('GitGutterAdd', s:source, s:bg, s:none)
call s:hi('GitGutterChange', s:source, s:bg, s:none)
call s:hi('GitGutterDelete', s:source, s:bg, s:none)
call s:hi('GitGutterChangeDelete', s:source, s:bg, s:none)
call s:hi('SignColumn', s:source, s:bg, s:none)

" Python syntax highlighting
call s:hi('pythonBuiltin', s:green, s:bg, s:none)
call s:hi('pythonDecoratorName', s:green, s:bg, s:none)
call s:hi('pythonDecorator', s:green, s:bg, s:none)
call s:hi('pythonOperator', s:primary, s:bg, s:none)
call s:hi('jinjaTagDelim', s:green, s:bg, s:none)
call s:hi('jinjaVarBlock', s:green, s:bg, s:none)
call s:hi('jinjaStatement', s:green, s:bg, s:none)
call s:hi('jinjaBlockName', s:source, s:bg, s:none)
call s:hi('jinjaVariable', s:source, s:bg, s:none)
call s:hi('jinjaString', s:string, s:bg, s:none)

" PHP
call s:hi('phpDefine', s:primary, s:bg, s:none)
call s:hi('phpIdentifier', s:source, s:bg, s:none)
call s:hi('bladeKeyword', s:green, s:bg, s:none)
call s:hi('bladeDelimiter', s:source, s:bg, s:none)

" Javascript
call s:hi('javaScriptIdentifier', s:primary, s:bg, s:none)
call s:hi('javaScriptBraces', s:source, s:bg, s:none)
call s:hi('javaScriptNull', s:scalar, s:bg, s:none)
call s:hi('javaScriptFunction', s:primary, s:bg, s:none)

" js (yuezk/vim-js)
call s:hi('jsArrow', s:source, s:bg, s:none)
call s:hi('jsVariableType', s:primary, s:bg, s:none)
call s:hi('jsBuiltinValues', s:green, s:bg, s:none)
call s:hi('jsClassName', s:lightblue, s:bg, s:none)

" " JSX (MaxMEllon/vim-jsx-pretty)
call s:hi('jsxTagName', s:lightgreen, s:bg, s:none)
call s:hi('jsxAttrib', s:lightblue, s:bg, s:none)
call s:hi('jsxPunct', s:comment, s:bg, s:none)
call s:hi('jsxCloseString', s:comment, s:bg, s:none)
call s:hi('jsxComponentName', s:green, s:bg, s:none)

" Java
call s:hi('javaAnnotation', s:green, s:bg, s:none)

" HTML
call s:hi('htmlTagName', s:lightgreen, s:bg, s:none)
call s:hi('htmlTag', s:comment, s:bg, s:none)
call s:hi('htmlEndTag', s:comment, s:bg, s:none)
call s:hi('htmlArg', s:lightblue, s:bg, s:none)

" CSS
call s:hi('cssProp', s:source, s:bg, s:none)
call s:hi('cssBraces', s:source, s:bg, s:none)
call s:hi('cssColor', s:scalar, s:bg, s:none)

" Ruby
call s:hi('rubyModule', s:primary, s:bg, s:none)
call s:hi('rubyDefine', s:primary, s:bg, s:none)
call s:hi('rubyClass', s:primary, s:bg, s:none)
call s:hi('rubyFunction', s:source, s:bg, s:none)

" Clojure
call s:hi('clojureSpecial', s:primary, s:bg, s:none)
call s:hi('clojureDefine', s:primary, s:bg, s:none)
call s:hi('clojureKeyword', s:source, s:bg, s:none)

" Rust
call s:hi('rustModPath', s:lightblue, s:bg, s:none)
call s:hi('rustEnumVariant', s:lightblue, s:bg, s:none)"

" Vimscript syntax highlighting
call s:hi('vimOption', s:source, s:bg, s:none)

" NERDTree
call s:hi('NERDTreeClosable', s:lightblue, s:bg, s:none)
call s:hi('NERDTreeOpenable', s:lightblue, s:bg, s:none)

" Hacks
hi CursorLine cterm=none
hi Identifier cterm=none

if has("gui_win32")
    call s:hi('Cursor', s:bg, s:string, s:none)
endif
