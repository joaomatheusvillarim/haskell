
addWhitespace(Palavra, Num, Resultado):- Num =:= 0,
  Resultado is Palavra.
addWhitespace(Palavra, Num, Palavra):- Num =/= 0,



main:-
  read(Palavra),
  read(Num),
  addWhitespace(Palavra, Num, Resultado),
  writeln(Resultado).