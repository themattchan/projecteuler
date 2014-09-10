import Data.Numbers.Primes

euler10 = sum $ takeWhile (< 2000000) primes
