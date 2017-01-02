square x = x*x

main = print $ square (sum [1..100]) - (sum (map square [0..100]))