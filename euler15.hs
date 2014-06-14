import Data.Char (digitToInt)
{- each path has 40 steps, 20 horizontal and 20 vertical.
   think of it as "how many ways to arrange 20 a's and 20 b's"
   use multinomial theorem -- 40!/(20!20!)
-}

fac40 = product [1..40]
fac20 = product [1..20]

main = print (fac40 `div` (fac20 * fac20))
