highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'github'
set background=light

" Helper function to set up highlight executions
function! s:hi(group, foreground, background, fontStyle)
    exec  "highlight "  . a:group
      \ . " guifg="     . a:foreground
      \ . " guibg="     . a:background
      \ . " gui="       . a:fontStyle
      \ . " cterm="     . a:fontStyle
endfunction

" Text style
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'

" Background
let s:bg = '#ffffff'

" Colors base
let s:primary       =   '#a71d5d'

let s:source        =   '#1a1a1a'
let s:keyword       =   s:primary
let s:structure     =   s:primary
let s:scalar        =   '#0086b3'
let s:string        =   '#183691'
let s:function      =   '#589353'
let s:special       =   '#795da3'

let s:comment       =   '#969896'

" Syntax highlighting groups
call s:hi('Comment', s:comment, s:bg, s:none)
call s:hi('Constant', s:special, s:bg, s:none)
call s:hi('String', s:string, s:bg, s:none)
call s:hi('Character', s:string, s:bg, s:none)
call s:hi('Number', s:scalar, s:bg, s:none)
call s:hi('Boolean', s:scalar, s:bg, s:none)
call s:hi('Float', s:scalar, s:bg, s:none)

call s:hi('Function', s:function, s:bg, s:none)
call s:hi('Statement', s:primary, s:bg, s:bold)
call s:hi('Conditional', s:keyword, s:bg, s:bold)
call s:hi('Repeat', s:keyword, s:bg, s:bold)
call s:hi('Operator', s:source, s:bg, s:none)
call s:hi('Keyword', s:primary, s:bg, s:bold)
call s:hi('Exception', s:primary, s:bg, s:bold)

call s:hi('Include', s:primary, s:bg, s:bold)
call s:hi('Define', s:source, s:bg, s:bold)
call s:hi('Macro', s:source, s:bg, s:none)
call s:hi('PreCondit', s:primary, s:bg, s:none)

call s:hi('Type', s:special, s:bg, s:bold)
call s:hi('StorageClass', s:primary, s:bg, s:bold)
call s:hi('Structure', s:primary, s:bg, s:bold)
call s:hi('Typedef', s:primary, s:bg, s:bold)

call s:hi('Special', s:source, s:bg, s:none)
call s:hi('SpecialKey', s:string, s:bg, s:none)
call s:hi('SpecialChar', s:primary, s:bg, s:none)
call s:hi('Delimiter', s:source, s:bg, s:none)
call s:hi('SpecialComment', s:comment, s:bg, s:none)
call s:hi('Debug', s:primary, s:bg, s:none)
call s:hi('Underlined', s:source, s:bg, s:underline)
call s:hi('Error', s:primary, s:bg, s:underline)
call s:hi('Todo', s:primary, s:bg, s:none)
call s:hi('Question', s:string, s:bg, s:none)

call s:hi('Directory', s:string, s:bg, s:none)
call s:hi('CursorLine', s:none, '#d8d9d8', s:none)
call s:hi('MatchParen', s:source, s:bg, s:bold)
call s:hi('ColorColumn', s:source, '#d8d9d8', s:none)


" Interface highlighting
call s:hi('Normal', s:source, s:bg, s:none)
call s:hi('Visual', s:none, '#d8dad8', s:none)
call s:hi('Cursor', s:none, s:bg, s:none)
call s:hi('iCursor', s:none, s:bg, s:none)
call s:hi('LineNr', s:comment, s:bg, s:none)
call s:hi('NonText', s:comment, s:bg, s:none)
call s:hi('CursorLineNr', s:source, s:bg, s:none)
call s:hi('VertSplit', s:comment, s:bg, s:none)
call s:hi('ErrorMsg', '#ffffff', s:primary, s:none)
call s:hi('Title', s:scalar, s:bg, s:none)
call s:hi('Pmenu', '#ffffff', '#333333', s:none)

" Git Gutter
call s:hi('GitGutterAdd', s:source, s:bg, s:none)
call s:hi('GitGutterChange', s:source, s:bg, s:none)
call s:hi('GitGutterDelete', s:source, s:bg, s:none)
call s:hi('GitGutterChangeDelete', s:source, s:bg, s:none)
call s:hi('SignColumn', s:source, s:bg, s:none)

" Json
call s:hi('Label', s:string, s:bg, s:none)

" Python syntax highlighting
call s:hi('pythonFunction', s:special, s:bg, s:bold)
call s:hi('pythonBuiltin', s:function, s:bg, s:none)
call s:hi('pythonDecoratorName', s:function, s:bg, s:none)
call s:hi('pythonDecorator', s:function, s:bg, s:none)
call s:hi('jinjaStatement', s:primary, s:bg, s:none)
call s:hi('jinjaTagDelim', s:primary, s:bg, s:none)
call s:hi('jinjaBlockName', s:primary, s:bg, s:none)
call s:hi('jinjaVariable', s:scalar, s:bg, s:none)
call s:hi('jinjaString', s:string, s:bg, s:none)

" PHP
call s:hi('phpDefine', s:primary, s:bg, s:bold)
call s:hi('phpIdentifier', s:source, s:bg, s:none)
call s:hi('bladeKeyword', s:primary, s:bg, s:bold)
call s:hi('PreProc', s:primary, s:bg, s:none)

" Javascript
call s:hi('javaScriptNull', s:scalar, s:bg, s:none)
call s:hi('javaScriptBraces', s:source, s:bg, s:none)
call s:hi('javaScriptNumber', s:scalar, s:bg, s:none)
call s:hi('jsObjectKey', s:source, s:bg, s:none)

" Typescript
call s:hi('typescriptBraces', s:source, s:bg, s:none)
call s:hi('typescriptDecorators', s:function, s:bg, s:bold)
call s:hi('typescriptEndColons', s:source, s:bg, s:none)

" HTML
call s:hi('htmlTagName', s:function, s:bg, s:none)
call s:hi('htmlTag', '#404040', s:bg, s:none)
call s:hi('Identifier', s:source, s:bg, s:none)
call s:hi('htmlArg', s:special, s:bg, s:none)

" CSS
call s:hi('cssProp', s:source, s:bg, s:none)
call s:hi('cssBraces', s:source, s:bg, s:none)

" Ruby
call s:hi('rubyModule', s:primary, s:bg, s:bold)
call s:hi('rubyDefine', s:primary, s:bg, s:bold)
call s:hi('rubyClass', s:primary, s:bg, s:bold)
call s:hi('rubyFunction', s:special, s:bg, s:bold)

" Vimscript syntax highlighting
call s:hi('vimOption', s:source, s:bg, s:none)

" NERDTree
call s:hi('NERDTreeClosable', s:string, s:bg, s:none)
call s:hi('NERDTreeOpenable', s:string, s:bg, s:none)

" Hacks
hi CursorLine cterm=none
hi Identifier cterm=none

if has("gui_win32")
    call s:hi('CursorLine', s:source, '#d8d9d8', s:none)
    call s:hi('Cursor', '#ffffff', s:primary, s:none)
endif

