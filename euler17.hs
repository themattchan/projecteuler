import Data.Char

units = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

numToWord x
  | x == 0 = []
  | x < 20 = units !! (x-1)
  | x >= 20 && x < 100 =
      tens !! (firstDigit x -2) ++ numToWord (x - (firstDigit x) *10)
  | x < 1000 && x `mod` 100 == 0 =
      units !! (firstDigit x -1) ++ "hundred"
  | x > 100 && x <= 999 =
      units !! (firstDigit x -1) ++ "hundred" ++ "and" ++ numToWord (x - (firstDigit x) *100)
  | x == 1000 = "onethousand"
  where firstDigit = digitToInt . head . show

answer = length . concatMap numToWord $ [1..1000]
