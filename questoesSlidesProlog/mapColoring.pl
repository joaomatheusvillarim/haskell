cor(vermelho).
cor(azul).
cor(amarelo).
cor(verde).

coloracao(A, B, C, D, E):-
  cor(A), cor(B), cor(C), cor(D), cor(E),
  A \= B, A \= C, A \= D,
  B \= C, B \= E,
  C \= D, C \= E,
  D \= E.