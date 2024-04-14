addWhitespace:: String -> Int -> String
addWhitespace palavra 0 = palavra
addWhitespace palavra num = " " ++ addWhitespace palavra (num - 1)

main:: IO()
main =
  do
    palavra <- getLine :: IO String
    num <- readLn :: IO Int
    putStrLn(addWhitespace palavra num)
