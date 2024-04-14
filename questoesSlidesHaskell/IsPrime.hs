isPrime:: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime num = checkForDivisors num 2

checkForDivisors:: Int -> Int -> Bool
checkForDivisors num current =
  if current + 1 == num
  then isNotDivisible num current
  else (isNotDivisible num current) && (checkForDivisors num (current + 1))

isNotDivisible:: Int -> Int -> Bool
isNotDivisible dividendo divisor = (mod dividendo divisor) /= 0

main:: IO ()
main =
  do
    num <- readLn :: IO Int
    putStrLn(show(isPrime num))
