
isPalindrome([]).
isPalindrome([_]).
isPalindrome([Head|Tail]):-
  last(Tail, Last),
  Head == Last,
  isPalindrome([Tail|_]).

main:-
  read(Palavra),
  atom_chars(Palavra, Chars),
  isPalindrome(Chars).