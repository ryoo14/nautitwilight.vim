function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = ['#3e445e', '#2b2b31']
  let col_edge     = ['#17171b', '#2b2b31']
  let col_gradient = ['#6b7089', '#2b2b31']
  let col_nc       = ['#3e445e', '#2b2b31']
  let col_tabfill  = ['#3e445e', '#2b2b31']
  let col_normal   = ['#2b2b31', '#62a8bc']
  let col_error    = ['#2b2b31', '#ed692c']
  let col_warning  = ['#2b2b31', '#27883e']
  let col_insert   = ['#2b2b31', '#82ba90']
  let col_replace  = ['#2b2b31', '#af83ae']
  let col_visual   = ['#2b2b31', '#ed692c']
  let col_tabsel   = ['#2b2b31', '#82a5ba']

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction

let g:lightline#colorscheme#navaltwilight#palette = lightline#colorscheme#fill(s:build_palette())
