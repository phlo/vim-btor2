" selects btormc for sequential formulas
function! btor2#SelectSolver()
  if search("\\v<(state|init|next|bad|constraint|fair|justice)>", "nw")
    let g:btor2_solver_command = g:btor2_btormc_command
  else
    let g:btor2_solver_command = g:btor2_boolector_command
  endif
endfunction

" invokes the solver on current file
function! btor2#RunSolver()
  call btor2#SelectSolver()
  silent !clear
  execute "!" . g:btor2_solver_command . " " . bufname("%")
endfunction

" puts the solver's output in new split (replaces old split)
function! btor2#RunSolverAndShowResult()
  call btor2#SelectSolver()

  let output = system(g:btor2_solver_command . " " . bufname("%") . " 2>&1")

  " create split (or reuse existent)
  if exists("s:outputbufnr") && bufwinnr(s:outputbufnr) > 0
    execute bufwinnr(s:outputbufnr) . 'wincmd w'
  else
    silent! vnew
    let s:outputbufnr=bufnr('%')
  endif

  " clear & (re-)fill contents
  silent! normal! ggdG
  setlocal filetype=btor2 buftype=nofile nobuflisted noswapfile
  call append(0, split(output, '\v\n'))
  normal! gg
endfunction
