
collatz :: Int -> Int
collatz n
  | even n = n `div` 2
  | odd n = (3*n) + 1

collatzChain :: Int -> Int
collatzChain = length . takeWhile (/=1) . iterate collatz
