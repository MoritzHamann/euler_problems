largestPalindrom = maximum [x * y | x <- [100..999], y <- [100..999], isPalindrom (x*y) ]

isPalindrom x = (show x == reverse (show x))
--isPalindrom x = (toList x == reverse (toList x))

-- optimized because append at end, but gives reverse order (unimportant for palindrom)
toListOpt x 
  | x /= 0 = [mod x 10] ++ toList (div x 10)
  | otherwise  = []

toList x 
  | x /= 0 = toList (div x 10) ++ [mod x 10]
  | otherwise  = []

main = print largestPalindrom