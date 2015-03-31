euler02 = sum $ takeWhile (< 4000000) even_fibs
  where fibs      = 0 : 1 : zipWith (+) fibs (tail fibs)
        even_fibs = filter ((== 0) . (`mod` 2)) fibs
