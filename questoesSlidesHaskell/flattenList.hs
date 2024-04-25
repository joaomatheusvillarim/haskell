flattenList:: [[Int]] -> [Int]
flattenList listaDeListas =
  if (length listaDeListas) == 1
  then head listaDeListas
  else (head listaDeListas) ++ (flattenList(tail listaDeListas))
