printEvensInterval:: Int -> Int -> IO()
printEvensInterval start end =
  if start == end
  then putStr(printIfEven start)
  else do
    putStr(printIfEven start)
    printEvensInterval (start + 1) end

printIfEven:: Int -> String
printIfEven num
  | (mod num 2) == 0 = show(num) 
  | (mod num 2) == 1 = "\n"

main:: IO()
main =
  do
    start <- readLn :: IO Int
    end <- readLn :: IO Int
    printEvensInterval start end
