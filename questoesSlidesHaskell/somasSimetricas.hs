casoTamanhoPar:: [Int] -> Int -> Int -> [Int]
casoTamanhoPar lista start end =
  if start + 1 == end
  then [(lista !! start) + (lista !! end)]
  else [(lista !! start) + (lista !! end)] ++ casoTamanhoPar lista (start + 1) (end - 1)

casoTamanhoImpar:: [Int] -> Int -> Int -> [Int]
casoTamanhoImpar lista start end =
  if start == end
  then [(lista !! start)]
  else [(lista !! start) + (lista !! end)] ++ casoTamanhoImpar lista (start + 1) (end - 1)

somasSimetricas:: [Int] -> [Int]
somasSimetricas lista =
  if mod (length lista) 2 == 0
  then casoTamanhoPar lista 0 ((length lista) - 1)
  else casoTamanhoImpar lista 0 ((length lista) - 1)
