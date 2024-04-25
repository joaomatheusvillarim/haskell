/*
Escreva um programa que verifica se um número é ou
não perfeito. Um número perfeito é um número positivo
que é igual a soma dos seus divisores, excluído ele
mesmo.
*/
divisorsSum(X, X, S):-
  S is 0.
divisorsSum(X, Y, S):-
  Y < X,
  Z is Y + 1,
  divisorsSum(X, Z, R),
  ((X mod Y =:= 0) -> (S is Y + R); (S is R)).

perfect(X):-
  X > 1,
  divisorsSum(X, 1, S),
  X =:= S.

main:-
  read(X),
  perfect(X).