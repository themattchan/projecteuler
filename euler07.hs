import Data.Numbers.Primes

p = (!! 10000) . primes

main = print p
