makeTuple:: [Int] -> Int -> ([Int], [Int])
makeTuple lista num = (take num lista, drop num lista)
