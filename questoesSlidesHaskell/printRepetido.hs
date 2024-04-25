printRepetido:: String -> Int -> IO()
printRepetido palavra vezes =
  if vezes == 1
  then putStrLn palavra
  else do
    putStrLn palavra
    printRepetido palavra (vezes - 1)

main:: IO()
main =
  do
    palavra <- readLn :: IO String
    vezes <- readLn :: IO Int
    printRepetido palavra vezes
