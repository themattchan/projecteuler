import Data.Char

-- cannot use an infinite list, pick a number
isTriNum = flip elem triNums
  where triNums = takeWhile (< 500) (scanl (+) 0 [1..])

-- ord 'A' => 65, so subtract 64
wordValue = sum . map ((subtract 64) . ord)

findTriWords = length . filter (isTriNum . wordValue)

euler42 = do
  t <- readFile "euler42.txt"
  print . findTriWords . read $ "["++t++"]"
