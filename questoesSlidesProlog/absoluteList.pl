/*
Defina um procedimento que converte os
elementos de uma lista em seus valores
absolutos
*/
modulo(X, Y):-
  X >= 0 -> Y is X; Y is (-1) * X.

converter([], []).
converter([Head1|Tail1], [Head2|Tail2]):-
  modulo(Head1, Head2),
  converter(Tail1, Tail2).

main:-
  read(Lista),
  converter(Lista, NovaLista),
  write(NovaLista).