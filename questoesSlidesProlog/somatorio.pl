
somatorio(1, R):-
  R is 1.
somatorio(X, S):-
  I is X - 1,
  somatorio(I, Y),
  S is X + Y.

main:-
  read(X),
  somatorio(X, S),
  write(S).