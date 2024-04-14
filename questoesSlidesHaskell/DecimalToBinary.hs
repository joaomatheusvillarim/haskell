toBinary:: Int -> IO()
toBinary 0 = putStr "0"
toBinary 1 = putStr "1"
toBinary num = do
  toBinary(num `div` 2)
  putStr(show(mod num 2))

main:: IO()
main =
  do
    num <- readLn :: IO Int
    toBinary(num)
    putStr "\n"
