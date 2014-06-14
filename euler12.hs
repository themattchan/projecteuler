import Data.Numbers.Primes (primeFactors)
import Data.List

triangles = map (\x -> (x * (x+1) `div` 2)) [1..]
{-
from http://mathschallenge.net/library/number/number_of_divisors
"We begin by writing the number as a product of prime factors: n = p^a q^b r^c...
then the number of divisors, d(n) = (a+1)(b+1)(c+1)..."
-}
--dunno what group does, but it won't compile unless it's there
divisors n = product (map ((+1) . length) (group (primeFactors n)))
res = head $ filter ((> 500) . divisors) triangles
main = print res
