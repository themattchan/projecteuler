import Data.Numbers.Primes
import Data.List

isCircular x = and primeTest
	where
	  circulars = map read $ permutations $ show x
	  primeTest = map isPrime circulars
euler35 = length $ filter (== True) $ map isCircular $ takeWhile (<10000000) primes
