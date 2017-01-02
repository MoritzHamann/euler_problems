--multiplies x = filter d [0..x-1]
--  where d y = (mod y 5) == 0 || (mod y 3) == 0

multiplies x = filter d [0..x-1]
  where d y
          | mod y 3 == 0 = True
          | mod y 5 == 0 = True 
          | otherwise = False

main = print $ sum $ multiplies 1000