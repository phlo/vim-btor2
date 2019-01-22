setlocal iskeyword+=-,:,#,',$

" if no command for invoking a solver is specified in ~/.vimrc, test if
" 'boolector' and 'btormc' are accessible through $PATH
if !exists("g:btor2_solver_command")
    if executable("boolector")
        let g:btor2_solver_command = "boolector"
    elseif executable("btormc")
        let g:btor2_solver_command = "btormc"
    endif
endif

" if no command line switch for printing the solver's version is specified in
" ~/.vimrc, use '--version'
if !exists("g:btor2_solver_version_switch")
    let g:btor2_solver_version_switch = "--version"
endif

" mappings
nnoremap <silent> <buffer> <localleader>r :call btor2#RunSolver()<cr>
nnoremap <silent> <buffer> <localleader>R :call btor2#RunSolverAndShowResult()<cr>
nnoremap <silent> <buffer> <localleader>v :call btor2#PrintSolverVersion()<cr>

" comment string
setlocal commentstring=;%s
