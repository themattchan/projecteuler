let fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
let even_fibs = filter (\x -> x `mod` 2 == 0) fibs
sum (takeWhile (< 4000000) even_fibs)
