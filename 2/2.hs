
import Debug.Trace

evenfib upto = filter even $ fib upto

fib upto = takeWhile (< upto) f
  where f = 0 : 1 : zipWith (+) f (tail f)

--fib upto = takeWhile (< upto) $ f 0 1
--  where f x y = [y + x] ++ f y (x+y) 

--main = print $ sum $ evenfib 4000000
main = trace "testing trace" $ sum $ evenfib 4000000
