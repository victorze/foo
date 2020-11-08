highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hacker'
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
let s:bg = '#0d0d0d'


" Colors base
let s:primary       =   '#81b38c'
let s:secondary     =   '#7574a5'

let s:source        =   '#bbbbbb'
let s:keyword       =   s:primary
let s:structure     =   s:secondary
let s:scalar        =   '#c05776'
let s:string        =   '#a7ecb7'

let s:comment       =   '#595959'


" Syntax highlighting groups
call s:hi('Comment', s:comment, s:bg, s:none)
call s:hi('Constant', s:primary, s:bg, s:none)
call s:hi('String', s:string, s:bg, s:none)
call s:hi('Character', s:string, s:bg, s:none)
call s:hi('Number', s:scalar, s:bg, s:none)
call s:hi('Boolean', s:scalar, s:bg, s:none)
call s:hi('Float', s:scalar, s:bg, s:none)

call s:hi('Identifier', s:primary, s:bg, s:none)
call s:hi('Function', s:secondary, s:bg, s:none)

call s:hi('Statement', s:primary, s:bg, s:none)
call s:hi('Conditional', s:keyword, s:bg, s:none)
call s:hi('Repeat', s:keyword, s:bg, s:none)
call s:hi('Label', s:primary, s:bg, s:none)
call s:hi('Operator', s:source, s:bg, s:none)
call s:hi('Keyword', s:primary, s:bg, s:none)
call s:hi('Exception', s:primary, s:bg, s:none)

call s:hi('PreProc', s:source, s:bg, s:none)
call s:hi('Include', s:primary, s:bg, s:none)
call s:hi('Define', s:source, s:bg, s:none)
call s:hi('Macro', s:source, s:bg, s:none)
call s:hi('PreCondit', s:primary, s:bg, s:none)

call s:hi('Type', s:secondary, s:bg, s:none)
call s:hi('StorageClass', s:primary, s:bg, s:none)
call s:hi('Structure', s:primary, s:bg, s:none)
call s:hi('Typedef', s:primary, s:bg, s:none)

call s:hi('Special', s:source, s:bg, s:none)
call s:hi('SpecialChar', s:primary, s:bg, s:none)
call s:hi('Delimiter', s:source, s:bg, s:none)
call s:hi('SpecialComment', s:comment, s:bg, s:none)
call s:hi('Debug', s:primary, s:bg, s:none)
call s:hi('Underlined', s:source, s:bg, s:underline)
call s:hi('Todo', s:primary, s:bg, s:none)
call s:hi('Error', s:primary, s:bg, s:underline)
call s:hi('ErrorMsg', s:primary, s:bg, s:none)
call s:hi('Question', s:string, s:bg, s:none)
call s:hi('WarningMsg', s:primary, s:none, s:none)
call s:hi('Search', s:bg, s:source, s:none)

call s:hi('Directory', s:string, s:bg, s:none)
call s:hi('CursorLine', s:none, '#1a1a1a', s:none)
call s:hi('MatchParen', s:source, '#333333', s:none)
call s:hi('ColorColumn', s:source, '#1a1a1a', s:none)


" Interface highlighting
call s:hi('Normal', s:source, s:bg, s:none)
call s:hi('Visual', s:bg, s:source, s:none)
call s:hi('Cursor', s:none, s:bg, s:none)
call s:hi('iCursor', s:none, s:bg, s:none)
call s:hi('LineNr', s:comment, s:bg, s:none)
call s:hi('NonText', s:comment, s:bg, s:none)
call s:hi('CursorLineNr', s:source, s:bg, s:none)
call s:hi('VertSplit', '#1a1a1a', s:bg, s:none)
call s:hi('Title', s:scalar, s:bg, s:none)
call s:hi('Pmenu', s:source, '#0d0d0d', s:none)
call s:hi('PmenuSel', s:bg, s:source, s:none)
call s:hi('SpecialKey', s:source, s:bg, s:none)

" ###########################################
" Git Gutter
call s:hi('GitGutterAdd', s:source, s:bg, s:none)
call s:hi('GitGutterChange', s:source, s:bg, s:none)
call s:hi('GitGutterDelete', s:source, s:bg, s:none)
call s:hi('GitGutterChangeDelete', s:source, s:bg, s:none)
call s:hi('SignColumn', s:source, s:bg, s:none)

" Python syntax highlighting
call s:hi('pythonFunction', s:primary, s:bg, s:none)
call s:hi('pythonBuiltin', s:primary, s:bg, s:none)
call s:hi('pythonDecoratorName', s:scalar, s:bg, s:none)
call s:hi('pythonDecorator', s:scalar, s:bg, s:none)
call s:hi('pythonOperator', s:secondary, s:bg, s:none)
call s:hi('jinjaStatement', s:scalar, s:bg, s:none)
call s:hi('jinjaTagDelim', s:scalar, s:bg, s:none)
call s:hi('jinjaBlockName', s:source, s:bg, s:none)
call s:hi('jinjaVariable', s:source, s:bg, s:none)
call s:hi('jinjaString', s:string, s:bg, s:none)

" PHP
call s:hi('phpDefine', s:primary, s:bg, s:none)
call s:hi('phpIdentifier', s:source, s:bg, s:none)
call s:hi('bladeKeyword', s:scalar, s:bg, s:none)

" Javascript
call s:hi('jsNull', s:scalar, s:bg, s:none)
call s:hi('jsUndefined', s:scalar, s:bg, s:none)
call s:hi('jsFuncName', s:source, s:bg, s:none)

" Java
call s:hi('javaAnnotation', s:secondary, s:bg, s:none)

" Typescript
call s:hi('typescriptBraces', s:source, s:bg, s:none)
call s:hi('typescriptDecorators', s:scalar, s:bg, s:none)
call s:hi('typescriptEndColons', s:source, s:bg, s:none)

" HTML
call s:hi('htmlTagName', s:primary, s:bg, s:none)
call s:hi('htmlTag', s:primary, s:bg, s:none)
call s:hi('Identifier', s:primary, s:bg, s:none)
call s:hi('htmlArg', s:secondary, s:bg, s:none)

" CSS
call s:hi('cssProp', s:source, s:bg, s:none)
call s:hi('cssBraces', s:source, s:bg, s:none)

" Ruby
call s:hi('rubyModule', s:primary, s:bg, s:none)
call s:hi('rubyDefine', s:primary, s:bg, s:none)
call s:hi('rubyClass', s:primary, s:bg, s:none)
call s:hi('rubyFunction', s:source, s:bg, s:none)

" Clojure
call s:hi('clojureSpecial', s:primary, s:bg, s:none)
call s:hi('clojureDefine', s:primary, s:bg, s:none)
call s:hi('clojureKeyword', s:source, s:bg, s:none)

" Vimscript syntax highlighting
call s:hi('vimOption', s:source, s:bg, s:none)

" NERDTree
call s:hi('NERDTreeClosable', s:string, s:bg, s:none)
call s:hi('NERDTreeOpenable', s:string, s:bg, s:none)

" Hacks
hi CursorLine cterm=none
hi Identifier cterm=none

if has("gui_win32")
    call s:hi('CursorLine', s:source, '#1a1a1a', s:none)
    call s:hi('Cursor', s:bg, s:string, s:none)
endif

