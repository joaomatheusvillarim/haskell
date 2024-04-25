get:: [t] -> Int -> t
get lista 1 = head lista
get lista index = get (tail lista) (index -1)
