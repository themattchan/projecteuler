fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
even_fibs = filter (\x -> x `mod` 2 == 0) fibs
euler02 = sum (takeWhile (< 4000000) even_fibs)
