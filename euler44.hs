import Control.Monad (guard)

euler44 =
  let pent n = (n * (3*n - 1)) `div` 2
      isPent x = let x' = fromIntegral x
                     n  = (sqrt(24*x' + 1) + 1) / 6 in
        n == fromInteger (round n)
  in head $ do
      a <- [1..]
      b <- [1..(a-1)]
      let pa = pent a
          pb = pent b
      guard $ isPent (pa - pb) && isPent (pa + pb)
      return (a - b)
