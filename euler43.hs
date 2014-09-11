import Data.List
euler43 = sum [num' |
               num <- permutations ['0' .. '9'],
               let num' = read num,
               let sub3 start = read $ take 3 $ drop (start-1) num,
               mod (sub3 2) 2 == 0,
               mod (sub3 3) 3 == 0,
               mod (sub3 4) 5 == 0,
               mod (sub3 5) 7 == 0,
               mod (sub3 6) 11 == 0,
               mod (sub3 7) 13 == 0,
               mod (sub3 8) 17 == 0]
