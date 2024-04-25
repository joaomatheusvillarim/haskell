% Print ao contrario

function(X):- X =:= -1,
  writeln("Sequencia invertida:").
function(X):- X =\= -1,
  read(Y),
  function(Y),
  writeln(X).

main:-
  read(X),
  function(X).