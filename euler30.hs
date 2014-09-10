import Data.Char

sum5thPow n = n == splitSum n
  where
    splitSum n = sum $ map ((^5) . toInteger . digitToInt) (show n)

-- try some large number
euler30 = sum $ filter sum5thPow [2..1000000]
