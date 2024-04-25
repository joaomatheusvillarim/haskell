
pertence(Cor, [Cor|_]).
pertence(Cor, [_|Tail]):-
  pertence(Cor, Tail).

main:-
  read(Cor),
  pertence(Cor, [verde, azul, amarelo, branco]).