primenumbers :: [Int]
primenumbers = 2 : filter isPrime [3,5..]

isPrime :: Int -> Bool
isPrime value = notdivideable value 2
  where
    notdivideable :: Int -> Int -> Bool
    notdivideable v factor
      | factor == (value - 1)  = True
      | v `rem` factor == 0 = False
      | otherwise = notdivideable v (factor + 1)


primes :: Int -> Int
primes number = helper 2 1
  where
    helper :: Int -> Int -> Int
    helper current amount
      | amount == number = current + 1
      | isPrime current = helper (current + 1) (amount + 1)
      | otherwise = helper (current + 1) amount


main = print $ primenumbers !! 10000

--main = print $ primes 10000