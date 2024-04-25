/*
um inteiro X é primo se (X mod 2 != 0) && (X mod 3 != 0) && (X mod 4 != 0)
&& ... (X mod (X -1) != 0)
*/
checkForDivisors(X, X).
checkForDivisors(X, Y):-
  X mod Y =\= 0,
  Z is Y + 1,
  checkForDivisors(X, Z).

isPrime(1).
isPrime(2).
isPrime(X):-
  checkForDivisors(X, 2).
  
main:-
  read(X),
  isPrime(X).