import Text.Printf

area:: Float -> String
area r = printf "%.4f" (3.14159 * r * r)

main:: IO()
main =
    do
        input <- readLn:: IO Float
        putStrLn("A=" ++ area(input))