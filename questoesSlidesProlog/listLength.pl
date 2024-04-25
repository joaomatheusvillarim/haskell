
length([], 0):-
length([_|Tail], Length):-
  length(Tail, L),
  Length is 1 + L.

main:-
  read(Lista),
  length(Lista, Length),
  write(Length).