function! s:build_palette() abort
  let palette = {
    \ 'normal':   {},
    \ 'inactive': {},
    \ 'insert':   {},
    \ 'replace':  {},
    \ 'visual':   {},
    \ 'tabline':  {}}
" Color Pallet
" #19191d 232
" #2b2b31 235
" #403f4a 239
" #6f6f80 245
" #4b78a0 031
" #7eacb9 006
" #ed692c 203
" #f29164 208
" #f6d2b6 222

  let base     = ['#6f6f80', '#2b2b31', '245', '235']
  let edge     = ['#292933', '#403f4a', '233', '239']
  let gradient = ['#6f6f80', '#2b2b31', '245', '235']
  let nc       = ['#6f6f80', '#2b2b31', '245', '235']
  let tabfill  = ['#6f6f80', '#2b2b31', '245', '235']
  let normal   = ['#2b2b31', '#4b78a0', '235', '031']
  let error    = ['#2b2b31', '#ed692c', '235', '203']
  let warn     = ['#2b2b31', '#27883e', '235', '023']
  let insert   = ['#2b2b31', '#7eacb9', '235', '006']
  let replace  = ['#2b2b31', '#af83ae', '235', '104']
  let visual   = ['#2b2b31', '#f29164', '235', '208']
  let tabsel   = ['#2b2b31', '#4b78a0', '235', '031']

  let palette.normal.middle = [base]
  let palette.normal.left = [normal, gradient]
  let palette.normal.right = [edge, gradient]
  let palette.normal.error = [error]
  let palette.normal.warning = [warn]

  let palette.insert.left = [insert, gradient]
  let palette.replace.left = [replace, gradient]
  let palette.visual.left = [visual, gradient]

  let palette.inactive.middle = [nc]
  let palette.inactive.left = [nc, nc]
  let palette.inactive.right = [nc, nc]

  let palette.tabline.middle = [tabfill]
  let palette.tabline.left = [tabfill]
  let palette.tabline.tabsel = [tabsel]

  let palette.tabline.right = copy(palette.normal.right)

  return palette
endfunction

let g:lightline#colorscheme#nautitwilight#palette = lightline#colorscheme#fill(s:build_palette())
