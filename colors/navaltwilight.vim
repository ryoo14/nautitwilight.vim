"  _   _                  _   _____          _ _ _       _     _
" | \ | | __ ___   ____ _| | |_   _|_      _(_) (_) __ _| |__ | |_
" |  \| |/ _` \ \ / / _` | |   | | \ \ /\ / / | | |/ _` | '_ \| __|
" | |\  | (_| |\ V / (_| | |   | |  \ V  V /| | | | (_| | | | | |_
" |_| \_|\__,_| \_/ \__,_|_|   |_|   \_/\_/ |_|_|_|\__, |_| |_|\__|
"                                                  |___/
" Name:     Naval Twilight
" Author:   ryoo <anana12185@gmail.com>
" License:  MIT

" Color Palet
" Eerie Black    #19191D
" Raisin Black   #2b2b31
" Dark Liver     #403f4a
" Rhythm         #6f6f80
" Bdazzled Blue  #385a78
" Blue Munsell   #32879e
" #49aac5
" Old Lavender   #755b74
" Orange Red     #ed692c
" Cadmium Orange #e7883e
" #f29164
" Desert Sand    #f6d2b6

if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "navaltwilight"

hi Normal guifg=#f6d2b6 guibg=#19191d
hi Comment guifg=#6f6f80
hi Constant guifg=#f5a580
hi Identifier guifg=#62a8bc
hi Statement guifg=#4b78a0
hi PreProc guifg=#f6d2b6
hi Type guifg=#62a8bc
hi Special guifg=#f6d2b6
hi Underlined guifg=NONE
hi Ignored guifg=#f6d2b6
hi Error guifg=#ed692c guibg=#19191d
hi ErrorMsg guifg=#ed692c guibg=#19191d
hi Todo guifg=#ed692c
hi LineNr guifg=#403f4a guibg=#19191d
hi VertSplit guifg=#2b2b31
