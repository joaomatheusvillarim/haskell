
function(1):-
  write("Number: "),
  writeln(1).
function(X):-
  X < 10,
  write("Number: "),
  writeln(X),
  Y is X -1,
  function(Y).

main:-
  read(X),
  function(X).