function! s:build_palette() abort
  let palette = {
    \ 'normal':   {},
    \ 'inactive': {},
    \ 'insert':   {},
    \ 'replace':  {},
    \ 'visual':   {},
    \ 'tabline':  {}}

  let base     = ['#6f6f80', '#2b2b31']
  let edge     = ['#17171b', '#2b2b31']
  let gradient = ['#6b7089', '#2b2b31']
  let nc       = ['#6f6f80', '#2b2b31']
  let tabfill  = ['#6f6f80', '#2b2b31']
  let normal   = ['#2b2b31', '#4b78a0']
  let error    = ['#2b2b31', '#ed692c']
  let warn     = ['#2b2b31', '#27883e']
  let insert   = ['#2b2b31', '#62a8bc']
  let replace  = ['#2b2b31', '#af83ae']
  let visual   = ['#2b2b31', '#ed692c']
  let tabsel   = ['#2b2b31', '#4b78a0']

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

let g:lightline#colorscheme#navaltwilight#palette = lightline#colorscheme#fill(s:build_palette())
