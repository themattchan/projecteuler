import Data.Char

sum5thPow n = n == splitSum n
  where splitSum = sum . map ((^5) . toInteger . digitToInt) . show

-- try some large number
euler30 = sum . filter sum5thPow $ [2..1000000]
