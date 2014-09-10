import Data.Numbers.Primes

isCircular

euler30 = length $ filter (isCircular . (< 1000000)) primes
