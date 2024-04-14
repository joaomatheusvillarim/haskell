--dobro

dobro:: Int -> Int
dobro x = 2 * x

main:: IO()
main =
    do
        input <- readLn:: IO Int
        print(dobro input)