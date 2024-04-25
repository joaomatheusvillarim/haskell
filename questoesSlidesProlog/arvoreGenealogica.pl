homem(joaomatheus).
homem(leo).
homem(joaovictor).
homem(marcos).
mulher(juliana).
progenitor(marcos, joaomatheus).
progenitor(marcos, leo).
progenitor(juliana, joaomatheus).
progenitor(juliana, leo).
progenitor(juliana, joaovictor).

homem(jose).
mulher(wilma).
homem(andre).
mulher(liana).
progenitor(jose, marcos).
progenitor(wilma, marcos).
progenitor(andre, juliana).
progenitor(liana, juliana).

homem(andrejr).
mulher(lorena).
homem(marcelo).
homem(cristiano).
mulher(assuncao).
mulher(fatima).
mulher(angela).
progenitor(andre, andrejr).
progenitor(liana, andrejr).
progenitor(liana, lorena).
progenitor(jose, marcelo).
progenitor(wilma, marcelo).
progenitor(jose, cristiano).
progenitor(wilma, cristiano).
progenitor(jose, assuncao).
progenitor(wilma, assuncao).
progenitor(jose, fatima).
progenitor(wilma, fatima).
progenitor(wilma, angela).

homem(benjamin).
progenitor(andrejr, benjamin).
mulher(carol).
homem(robertojr).
mulher(beatriz).
mulher(marcella).
homem(vinicius).
mulher(lara).
homem(rodrigo).
progenitor(assuncao, carol).
progenitor(fatima, robertojr).
progenitor(fatima, beatriz).
progenitor(marcelo, marcella).
progenitor(cristiano, vinicius).
progenitor(cristiano, lara).
progenitor(angela, rodrigo).

pai(P, X):- homem(P),
  progenitor(P, X).
mae(M, X):- mulher(M),
  progenitor(M, X).

filho(F, P):- homem(F),
  progenitor(P, F).
filha(F, P):- mulher(F),
  progenitor(P, F).

irmao(I, X):-
  (pai(P, X), pai(P, I));(mae(M, I), mae(M, X)),
  homem(I),
  I \= X.
irma(I, X):- mulher(I),
  progenitor(P, I), progenitor(P, X),
  I \= X.
  
grandpa(G, X):- pai(G, P),
  progenitor(P, X).
grandma(G, X):- mae(G, M),
  progenitor(M, X).

neto(N, X):- homem(N),
  grandpa(X, N);
  grandma(X, N).
neta(N, X):- mulher(N),
  grandpa(X, N);
  grandma(X, N).

tio(T, X): irmao(T, P),
  progenitor(P, X).
tia(T, X):- irma(T, P),
  progenitor(P, X).
sobrinho(S, X):- homem(S),
  tio(X, S); tia(X, S).
sobrinha(S, X):- mulher(S),
  tio(X, S); tia(X, S).

primo(P, X):- homem(P),
  (grandpa(G, P); grandpa(G, X)),
  P \= X.
prima(P, X):- mulher(P),
  (grandpa(G, P), grandma(G, X)),
  P \= X.