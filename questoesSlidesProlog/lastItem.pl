
ultimo([Last|[]], Last):- !.
ultimo([_|Tail], Last):-
  ultimo(Tail, Last).

main:-
  read(Lista),
  ultimo(Lista, Item),
  write(Item).