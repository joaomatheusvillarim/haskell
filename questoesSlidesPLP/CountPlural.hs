isPlural:: String -> Bool
isPlural palavra = (last palavra) == 's'

plural:: [String] -> Int
plural [] = 0
plural lista =
  if isPlural(head lista)
  then 1 + plural(tail lista)
  else 0 + plural(tail lista)
