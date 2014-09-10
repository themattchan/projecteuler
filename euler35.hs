import Data.Numbers.Primes

isCircular

main = print $ length $ filter (isCircular . (< 1000000)) primes
