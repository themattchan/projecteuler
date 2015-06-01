import Data.List
import Data.Maybe

-- (53.25 secs, 51952962368 bytes)
euler43' = sum [ num'
               | num <- permutations ['0' .. '9']
               , let num' = read num
               , let sub3 start = read . take 3 $ drop (start-1) num
               , mod (sub3 2) 2  == 0
               , mod (sub3 3) 3  == 0
               , mod (sub3 4) 5  == 0
               , mod (sub3 5) 7  == 0
               , mod (sub3 6) 11 == 0
               , mod (sub3 7) 13 == 0
               , mod (sub3 8) 17 == 0
               ]

substrings :: String -> [Int]
substrings = map read . take 7 . go . drop 1
  where go xs = take 3 xs : go (tail xs)

divBy = [2,3,5,7,11,13,17]

isFactor :: Int -> Int -> Bool
isFactor a b = flip mod a b == 0

testMods :: String -> [Bool]
testMods = zipWith isFactor divBy . substrings

-- (56.72 secs, 52943539232 bytes)
euler43 :: Int
euler43 = sum . mapMaybe f $ permutations ['0' .. '9']
  where f n = if all id (testMods n) then Just (read n)
              else Nothing
