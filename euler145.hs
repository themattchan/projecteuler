module Euler145 where

-- slow as hell...

odds = ['1','3','5','7','9']

allOdds = all (flip elem odds) . show

revNum = read . reverse . show

isReversible n = allOdds (n + revNum n)

euler145 = length $ filter isReversible [0..10^9]
