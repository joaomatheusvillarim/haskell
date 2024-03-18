printInterval:: [Int] -> Int -> Int -> IO()
printInterval lista a b
  | a < b = do
    print(lista!!a)
    printInterval lista (a+1) b
  | a == b = print(lista!!a)