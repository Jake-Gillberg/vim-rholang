if exists("b:current_syntax")
  finish
endif

"syn keyword rholangKeyword Nil not matches and or contract for select match if else new in
"hi link rholangKeyword Keyword

"syntax match operator "\v\*"

syntax match rholangName "\v([a-z]) ([a-z] | [A-Z] | [0-9] | _)*"
highlight default link rholangName Identifier

syntax match rholangProcess "\v([A-Z]) ([a-z] | [A-Z] | [0-9] | _)*"
highlight default link rholangProcess Typedef

let b:current_syntax = "rholang"


"(((letter | '\'') (letter | digit | '_' | '\'')*)|(('_') (letter | digit | '_' | '\'')+))
