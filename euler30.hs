import Data.Char

sum5thpow n = n == splitsum n
  where
    splitsum n = sum $ map ((^5) . toInteger . digitToInt) (show n)

-- try some large number
res = sum $ filter sum5thpow [2..1000000]

main = print res
