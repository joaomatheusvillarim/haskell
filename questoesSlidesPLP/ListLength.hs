listLength:: [t] -> Int
listLength [] = 0
listLength list = 1 + listLength(tail list)
