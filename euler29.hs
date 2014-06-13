import Data.List (nub)

as = [2..100]
bs = [2..100]
terms = [a^b | a <- as, b <- bs]

len = length $ nub $ terms

main = print len
