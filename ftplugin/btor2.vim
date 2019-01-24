setlocal iskeyword+=-,:,#,',$

" if no commands for invoking the solvers is specified in ~/.vimrc, test if
" 'boolector' and 'btormc' are accessible through $PATH
if !exists("g:btor2_boolector_command")
  if executable("boolector")
    let g:btor2_boolector_command = "boolector"
  endif
endif

if !exists("g:btor2_btormc_command")
  if executable("btormc")
    let g:btor2_btormc_command = "btormc"
  endif
endif

" mappings
nnoremap <silent> <buffer> <localleader>e :call btor2#RunSolver()<cr>
nnoremap <silent> <buffer> <localleader>E :call btor2#RunSolverAndShowResult()<cr>
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

" comment string
setlocal commentstring=;%s
