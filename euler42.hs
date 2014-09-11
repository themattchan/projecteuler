import Data.Char

-- cannot use an infinite list, pick a number
triNums = takeWhile (<500) (scanl (+) 0 [1..])
-- ord'A' => 65, so subtract 64
wordValue w = sum $ map (\c -> (ord c) - 64) w
findTriWords xs = length [() | x <- xs, elem  (wordValue x) triNums]
euler42 = do
  t <- readFile "euler42.txt"
  print $ findTriWords $ read $ "["++t++"]"
