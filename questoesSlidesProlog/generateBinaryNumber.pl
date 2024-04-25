digito(0).
digito(1).

binario(N):- N = (A, B, C, D),
  digito(A),
  digito(B),
  digito(C),
  digito(D).