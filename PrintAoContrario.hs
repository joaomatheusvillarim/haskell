--print ao contrario

main:: IO()
main =
    do
        input <- readLn :: IO Int
        if input == 0 then print "Sequencia invertida:"
        else
            do
                main
                print input