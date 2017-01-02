primefactors x = nextPrime 1 x

nextPrime factor value
  | value == 1 = []
  | mod value factor == 0 = [factor] ++ nextPrime (factor + 1) (div value factor)
  | otherwise = nextPrime (factor + 1) value

main = print $ maximum $ primefactors 600851475143