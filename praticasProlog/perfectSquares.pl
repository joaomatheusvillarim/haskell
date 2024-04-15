
squared(I, S):-
  S is I * I.

printSquares(I, N):-
  I < N,
  squared(I, S), writeln(S), printSquares(I+1,N).
printSquares(I, N):-
  I =:= N,
  squared(I, S), writeln(S), halt.

main:-
  read(N),
  printSquares(1, N).
