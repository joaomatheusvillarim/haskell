
subtracao(1, R):-
  read(R).
subtracao(N, S):-
  read(X),
  M is N - 1,
  subtracao(M, T),
  S is T - X.

main:-
  read(N),
  subtracao(N, S),
  write(S).