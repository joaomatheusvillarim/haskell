findGreatest:: [Int] -> Int
findGreatest lista
  | tamanho == 1 = head lista
  | tamanho == 2 = greatest (head lista) (head (tail lista))
  | otherwise = greatest (head lista) (findGreatest(tail lista))
  where tamanho = length lista

greatest:: Int -> Int -> Int
greatest x y =
  if x > y
  then x
  else y
