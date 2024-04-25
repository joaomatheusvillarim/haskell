media(X, Y, Z, M):- M is (X + Y + Z)/3.

classifica(X, Y, Z, "Aprovado"):- media(X, Y, Z, M),
  M >= 7, !.
classifica(X, Y, Z, "Final"):- media(X, Y, Z, M),
  M < 7, M >= 4, !.
classifica(X, Y, Z, "Reprovado"):- media(X, Y, Z, M),
  M < 4, !.

main:-
  read(X),
  read(Y),
  read(Z),
  classifica(X, Y, Z, C),
  write(C).