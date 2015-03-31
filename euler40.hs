import Data.Char

euler40 = product $ map (digitToInt . ($ frac)) takes
  where frac  = concatMap show [1..]
        takes = map ((flip (!!)) . pred) . take 7 $ iterate (*10) 1
