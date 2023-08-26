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
  let col_normal   = ['#385a78', '#2b2b31']
  let col_error    = ['#ed692c', '#2b2b31']
  let col_warning  = ['#e7883e', '#2b2b31']
  let col_insert   = ['#32879e', '#2b2b31']
  let col_replace  = ['#755b74', '#2b2b31']
  let col_visual   = ['#6f6f80', '#2b2b31']
  let col_tabsel   = ['#19191d', '#2b2b31']

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
