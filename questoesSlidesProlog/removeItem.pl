
remover(Item, [Item|Tail], Tail):- !.
remover(Item, [Head|Tail1], [Head|Tail2]):-
  remover(Item, Tail1, Tail2).

main:-
  read(Lista),
  read(Item),
  remover(Item, Lista, Resultado),
  write(Resultado).