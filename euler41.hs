import Data.Char (intToDigit)
import Data.Numbers.Primes
import Data.List
euler41 = maximum [num | n <- [1..9],
				   num <- permutations ['1'.. intToDigit n],
				   isPrime $ read num]
