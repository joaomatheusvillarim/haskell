removeLowercase:: [Char] -> String
removeLowercase palavra =
  if length palavra == 1
  then addIfUppercase(head palavra)
  else addIfUppercase(head palavra) ++ removeLowercase(tail palavra)

addIfUppercase:: Char -> String
addIfUppercase letra =
  if letra `elem` ['A'..'Z']
  then [letra]
  else ""

main:: IO()
main = do
  palavra <- getLine :: IO String 
  putStrLn(removeLowercase palavra)
