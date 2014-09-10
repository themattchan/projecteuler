import Data.List (nub)

xs = [2..100]
terms = [a^b | a <- xs, b <- xs]

-- nub removes duplicates
euler29 = length $ nub $ terms
