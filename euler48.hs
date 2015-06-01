euler48 = reverse . take 10 . reverse . show . sum $ map (doubleInp (^)) [1..1000]
  where doubleInp f a = f a a