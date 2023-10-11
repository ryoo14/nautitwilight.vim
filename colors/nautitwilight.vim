"  _   _             _   _           _   _____          _ _ _       _     _
" | \ | | __ _ _   _| |_(_) ___ __ _| | |_   _|_      _(_) (_) __ _| |__ | |_
" |  \| |/ _` | | | | __| |/ __/ _` | |   | | \ \ /\ / / | | |/ _` | '_ \| __|
" | |\  | (_| | |_| | |_| | (_| (_| | |   | |  \ V  V /| | | | (_| | | | | |_
" |_| \_|\__,_|\__,_|\__|_|\___\__,_|_|   |_|   \_/\_/ |_|_|_|\__, |_| |_|\__|
"                                                             |___/
" Name:     Nautical Twilight
" Author:   ryoo <anana12185@gmail.com>
" License:  MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "nautitwilight"

" Color Pallet
" #292933 235
" #2b2b31 235
" #403f4a 239
" #6f6f80 245
" #4b78a0 031
" #7eacb9 006
" #ed692c 203
" #f5dd90 221
" #f8996d 208
" #f6d2b6 222

hi Normal ctermfg=223 ctermbg=235 guifg=#f6d2b6 guibg=#292933
hi NonText ctermfg=239 ctermbg=235 guifg=#403f4a guibg=#292933
hi Comment ctermfg=245 guifg=#6f6f80
hi Constant ctermfg=208 guifg=#f8996d
hi Identifier cterm=NONE ctermfg=006 guifg=#7eacb9
hi Statement ctermfg=031 guifg=#4b78a0
hi PreProc ctermfg=222 guifg=#f6d2b6
hi Type ctermfg=006 guifg=#7eacb9
hi Special ctermfg=031 guifg=#4b78a0
hi SpecialKey ctermfg=031 guifg=#4b78a0
hi Underlined ctermfg=NONE guifg=NONE
hi Ignored ctermfg=222 guifg=#f6d2b6
hi Search ctermfg=235 ctermbg=221 guifg=#292933 guibg=#f5dd90
hi WarningMsg ctermfg=221 guifg=#f5dd90
hi Error ctermfg=203 ctermbg=235 guifg=#ed692c guibg=#292933
hi! link ErrorMsg Error
hi Todo ctermfg=203 ctermbg=235 guifg=#ed692c guibg=#292933
hi LineNr ctermfg=245 ctermbg=235 guifg=#6f6f80 guibg=#292933
hi! link CursorLineNr LineNr
hi VertSplit cterm=NONE ctermfg=235 gui=NONE guifg=#2b2b31
hi Directory ctermfg=006 guifg=#7eacb9
hi NonText ctermfg=245 guifg=#6f6f80
hi StatusLine ctermfg=235 guifg=#2b2b31
hi StatusLineNC ctermfg=239 guifg=#292933
hi Pmenu ctermbg=235 guibg=#2b2b31
hi! link PmenuSbar Pmenu
hi! link PmenuThumb Pmenu
hi Title ctermfg=006 guifg=#4b78a0
hi Visual ctermbg=239 guibg=#403f4a
hi CursorLine cterm=NONE ctermbg=235 gui=NONE guibg=#2b2b31
hi Question ctermfg=031 guifg=#4b78a0
hi SignColumn ctermfg=239 ctermbg=235 guifg=#403f4a guibg=#292933
hi FoldColumn ctermfg=239 ctermbg=235 guifg=#403f4a guibg=#292933
hi DiffAdd ctermbg=239 guibg=#403f4a
hi DiffChange ctermbg=239 guibg=#403f4a
hi DiffDelete ctermfg=245 ctermbg=239 guifg=#6f6f80 guibg=#403f4a
hi DiffText cterm=reverse ctermbg=239 gui=reverse guibg=#403f4a
hi Folded ctermfg=245 ctermbg=239 guifg=#6f6f80 guibg=#403f4a
hi MoreMsg ctermfg=031 guifg=#4b78a0

" vim
hi! link vimUsrCmd Statement
hi! link vimSep Normal
hi! link vimParenSep Normal
hi! link vimUserFunc Function
hi! link vimIsCommand Function
hi! link vimBracket Type
hi! link vimNotation Type
hi! link vimOption Type
hi! link vimSetEqual Constant

" html
hi! link htmlTag Title
hi! link htmlTagName Identifier

" markdown
hi! link mkdHeading Statement
hi! link mkdLink Statement
hi! link mkdURL Identifier
hi mkdLineBreak ctermbg=235 guibg=#2b2b31

" bash
hi! link Delimiter Normal
hi! link shOperator Identifier
hi! link shShellVariables Identifier
hi! link shQuote Constant

" typescript
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptIdentifier Statement
hi! link typescriptVariable Statement
hi! link typescriptVariableDeclaration Identifier
hi! link typescriptNull Constant
hi! link typescriptBraces Normal
hi! link typescriptPredefinedType Constant
hi! link typescriptTypeReference Constant
hi! link typescriptObjectLiteral Constant
hi! link typescriptBlock Identifier
hi! link typescriptCacheMethod Identifier
hi! link typescriptCall Identifier
hi! link typescriptEndColons Normal

" ruby
hi! link rubyInclude Statement
hi! link rubyModule Statement
hi! link rubyClass Statement
hi! link rubyClassBlock Statement
hi! link rubyDefine Statement
hi! link rubyAccess WarningMsg

" fugitive
hi! link fugitiveUnstagedHeading Statement
hi! link fugitiveStagedHeading Statement
hi! link fugitiveHeading Statement

" terminal
let g:terminal_ansi_colors = ['#292933', '#ed692c', '#4b78a0', '#f8996d', '#4b78a0', '#7eacb9', '#7eacb9', '#2b2b31', '#403f4a', '#ed692c', '#7eacb9',
      \ '#f8996d', '#4b78a0', '#7eacb9', '#7eacb9', '#2b2b31']
