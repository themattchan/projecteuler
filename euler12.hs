import Data.Numbers.Primes (primeFactors)
import Data.List (sort)

triangles = map (\x -> sum [1..x] ) [1..]
