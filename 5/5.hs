evenlyDiv :: Int -> Int
evenlyDiv upto = head [x | x <- [1..], divAbleUpto x upto]

divAbleUpto :: Int -> Int -> Bool
divAbleUpto x factor
  | factor == 0 = True
  | (x `rem` factor) /= 0 = False
  | (x `rem` factor) == 0 = divAbleUpto x (factor - 1)
  | otherwise = False

main = print $ evenlyDiv 20