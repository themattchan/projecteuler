euler25 = head [x | (x,y) <- idx, length (show y) == 1000]
  where fib = 1 : 1 : zipWith (+) fib (tail fib)
        idx = zip [1..] fib
