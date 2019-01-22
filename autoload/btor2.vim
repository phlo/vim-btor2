" invokes the solver on current file
function! btor2#RunSolver()
    silent !clear
    execute "!" . g:btor2_solver_command . " " . bufname("%")
endfunction

" puts the solver's output in new split (replaces old split)
function! btor2#RunSolverAndShowResult()
    let output = system(g:btor2_solver_command . " " . bufname("%") . " 2>&1")

    " Create split (or reuse existent)
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

" requests the solver's version
function! btor2#PrintSolverVersion()
    silent !clear
    execute "!" . g:smt2_solver_command . " " . g:smt2_solver_version_switch
endfunction
