isDivisor(X, Y):-
  X mod Y =:= 0.

isLastDigit(X, Y):-
  X mod 10 =:= Y.

classifica(X, Y):-
  (X < 1; Y < 1; Y > 9),
  writeln("Input invalido."), halt.
classifica(X, Y):-
  isDivisor(X, Y), not(isLastDigit(X, Y)),
  write(Y), write(" eh divisor de "), write(X), writeln("."), halt.
classifica(X, Y):-
  not(isDivisor(X, Y)), isLastDigit(X, Y),
  write(Y), write(" eh o ultimo digito de "), write(X), writeln("."), halt.
classifica(X, Y):-
  isDivisor(X, Y), isLastDigit(X, Y),
  write(Y), write(" eh ao mesmo tempo divisor e o ultimo digito de "), write(X), writeln("."), halt.

main:-
  read(X),
  read(Y),
  classifica(X,Y).
