--soma dos dígitos de fibonacci

fib:: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

somaDigitos:: String -> Int
somaDigitos texto
    | tamanho == 1 = read texto :: Int
    | otherwise = (read(take 1 texto) :: Int) + (somaDigitos(tail texto))
    where tamanho = length texto

compararTermoFib:: Int -> Int -> Int
compararTermoFib valor termo =
    if somaDigitos(show(fib termo)) == valor
        then fib termo
        else compararTermoFib valor (termo + 1)

main:: IO()
main =
    do
        valor <- readLn :: IO Int
        print(compararTermoFib valor 0)