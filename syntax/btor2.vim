" Vim syntax file
" " Language:     BTOR2
" " Maintainer:   Florian Schrögendorfer <florian.schroegendorfer@gmail.com>

" Quit if a syntax file is already loaded
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "btor2"

" Comments
syntax match btor2Comment ";.*$"

" Sorts
syntax keyword btor2Sort
      \ array
      \ bitvec
      \ sort
" syntax match btor2Sort "[\^\~]"

" Inputs
syntax keyword btor2Input
      \ input
      \ const
      \ constd
      \ consth
      \ one
      \ ones
      \ zero
" syntax match btor2Input "!"

" Sequential
syntax keyword btor2Sequential
      \ state
      \ init
      \ next
      \ bad
      \ constraint
      \ fair
      \ justice
" syntax match btor2Sequential "!"

" Operators
syntax keyword btor2Operator
      \ sext
      \ uext
      \ slice
      \ not
      \ inc
      \ dec
      \ neg
      \ redand
      \ redor
      \ redxor
      \ iff
      \ implies
      \ eq
      \ neq
      \ sgt
      \ ugt
      \ sgte
      \ ugte
      \ slt
      \ ult
      \ slte
      \ ulte
      \ and
      \ nand
      \ nor
      \ or
      \ xnor
      \ xor
      \ rol
      \ ror
      \ sll
      \ sra
      \ srl
      \ add
      \ mul
      \ sdiv
      \ udiv
      \ smod
      \ srem
      \ urem
      \ sub
      \ saddo
      \ uaddo
      \ sdivo
      \ udivo
      \ smulo
      \ umulo
      \ ssubo
      \ usubo
      \ concat
      \ read
      \ ite
      \ write
" syntax match btor2Operator "\v(\d+\s+)@<="
syntax match btor2Operator "!"

" Identifier
syntax match btor2Identifier "\v<(\d+\s+)@<=\p+>"

" Number
syntax match btor2Int "\v<-?\d+>"
syntax match btor2Hex "\v<[0-9a-fA-F]+>"
syntax match btor2Binary "\v<[01]+>"

" Message
syntax match btor2Message "\v<^[\p\s]+&>"

" Error
syntax keyword btor2Error
      \ error
      \ boolector
      \ btormc

highlight def link btor2Comment     Comment
highlight def link btor2Sort        Type
highlight def link btor2Input       Special
highlight def link btor2Sequential  PreProc
highlight def link btor2Operator    Identifier
highlight def link btor2Identifier  Statement
highlight def link btor2Hex         Normal
highlight def link btor2Binary      Normal
highlight def link btor2Int         Normal
highlight def link btor2Message     Normal
highlight def link btor2Error       Error
