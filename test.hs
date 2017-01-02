--module Main where

summation :: Int -> Int -> Int
summation start upto 
  | upto == 0 = start
  | otherwise = summation (start+upto) (upto-1)


--main = print $ summation 0 1000000000

main = print $ sum [0..1000000000]

