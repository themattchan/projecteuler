-- COMPILE: ghc -O2 -threaded --make euler35.hs
-- RUN:     ./euler35 +RTS -N4

import Data.Numbers.Primes
import Data.List
import Control.Parallel
import Control.Parallel.Strategies

pmap = parMap rseq

isCircular = and . pmap (isPrime . read) . permutations . show

euler35 = length . filter id . pmap isCircular $ takeWhile (<10000000) primes

main = print euler35
