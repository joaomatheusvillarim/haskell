-- regra de três

regraDeTres:: Float -> Float -> Float -> Float
regraDeTres a b c = (b * c) / a

main:: IO()
main =
    do
        a <- readLn:: IO Float
        b <- readLn:: IO Float
        c <- readLn:: IO Float
        putStrLn("O valor de x é: " ++ (show(regraDeTres a b c)))