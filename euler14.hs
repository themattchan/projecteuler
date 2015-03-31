import Data.List

-- THIS IS REALLY SLOW

collatz :: Int -> Int
collatz n
  | even n = n `div` 2
  | odd  n = 3*n + 1

collatzChain :: Int -> Int
collatzChain = length . takeWhile (/=1) . iterate collatz

euler14 = fst . head . sortBy cmp . zip mil $ map collatzChain mil
  where mil = [1..1000000]
        cmp (_,c1) (_,c2) = compare c1 c2
