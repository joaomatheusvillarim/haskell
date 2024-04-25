
concat([ ], Lista, Lista).
concat([X|Lista1], Lista2, [X|Lista3]):-
  concat(Lista1, Lista2, Lista3).

main:-
  read(Lista1),
  read(Lista2),
  concat(Lista1, Lista2, Resultado),
  write(Resultado).