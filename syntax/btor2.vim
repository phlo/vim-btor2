" Vim syntax file
" " Language:     BTOR2
" " Maintainer:   Florian Schrögendorfer <florian.schroegendorfer@gmail.com>

" quit if a syntax file is already loaded
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "btor2"

" comments
syntax match btor2Comment "\v;.*$"

" symbol
syntax match btor2Symbol "\v<\S+>" contained contains=
      \ btor2StatePart,
      \ btor2InputPart

" numbers
syntax match btor2Int "\v<-?\d+>" contained

" sorts
syntax keyword btor2Sort contained
      \ array
      \ bitvec
      \ sort

" inputs
syntax keyword btor2Input contained
      \ input
      \ const
      \ constd
      \ consth
      \ one
      \ ones
      \ zero

" sequential
syntax keyword btor2Sequential contained
      \ state
      \ init
      \ next
      \ bad
      \ constraint
      \ fair
      \ justice

" operators
syntax keyword btor2Operator contained
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

" node id
syntax match btor2NodeID "\v^<\d+>" contained

" node lines
syntax match btor2Node "\v^\d+\s+(\w+\s+)+(\d+\s*)+(\w+)?" contains=
      \ btor2Comment,
      \ btor2NodeID,
      \ btor2Symbol,
      \ btor2Int,
      \ btor2Sort,
      \ btor2Input,
      \ btor2Sequential,
      \ btor2Operator

" witness's property
syntax match btor2Property "\v^[bj]\d+"

" witness's state part
syntax match btor2StatePart "\v#\d+$"

" witness's input part
syntax match btor2InputPart "\v\@\d+$"

" assignment lines
syntax match btor2Assignment "\v^\d+(\[\d+\])?\s+\d+(\s+\S+)?" contains=
      \ btor2NodeID,
      \ btor2Symbol,
      \ btor2Int,
      \ btor2StatePart,
      \ btor2InputPart

highlight def link btor2Comment     Comment
highlight def link btor2Symbol      Statement
highlight def link btor2Int         Normal
highlight def link btor2Sort        Type
highlight def link btor2Input       Special
highlight def link btor2Sequential  PreProc
highlight def link btor2Operator    Identifier
highlight def link btor2NodeID      Constant
highlight def link btor2Property    Todo
highlight def link btor2StatePart   Underlined
highlight def link btor2InputPart   Underlined
