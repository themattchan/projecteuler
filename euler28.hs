{-
      (1)
   +2 (3,5,7,9),
   +4 (13,17,21,25)
   +6 ...
-}

euler28 = sum . scanl (+) 1 $ concatMap (replicate 4) [2,4..1000]
