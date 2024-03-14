checkInterval:: [Int] -> Int -> Int -> Int
checkInterval [] a b = 0
checkInterval lista a b
    | a < n && n <= b = 1 + (checkInterval (tail lista) a b)
    | otherwise = 0 + (checkInterval (tail lista) a b)
    where n = head lista
    
main:: IO()
main =
    do
        lista <- readLn :: IO [Int]
        let a = checkInterval lista 0 80
        let b = checkInterval lista 80 88
        let c = checkInterval lista 88 300
        print "=== Relatorio ==="
        print((show a) ++ " limite")
        print((show b) ++ " tolerancia")
        print((show c) ++ " multa")
