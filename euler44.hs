import Control.Monad

euler44 =
  let pairs = [(a,b) | a <- [1..], b <- [1..(a-1)]]
      pent n = (n * (3*n - 1)) `div` 2
      isPent x = let x' = fromIntegral x
                     n  = (sqrt(24*x' + 1) + 1) / 6 in
        n == fromInteger (round n)
  in head $ do
      (a,b) <- pairs
      let pa = pent a
          pb = pent b
      guard $ isPent (pa - pb) && isPent (pb + pa)
      return (a - b)
