--sequencias crescentes

tamanhoSequencia:: [Int] -> Int -> Int
tamanhoSequencia lista index =
  if (length lista) - index > 1
  then
    if lista!!index < lista!!(index + 1)
    then 1 + tamanhoSequencia lista (index + 1)
    else 1
  else 1

encontrarSequencias:: [Int] -> Int -> Int
encontrarSequencias lista index = do
  let tamanho = tamanhoSequencia lista index
  if (length lista) <= index
  then 0
  else
    if tamanho > 2
    then 1 + encontrarSequencias lista (index + tamanho)
    else 0 + encontrarSequencias lista (index + tamanho)

main:: IO()
main = do
  lista <- readLn:: IO [Int]
  print(encontrarSequencias lista 0)