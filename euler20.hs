import Data.Char (digitToInt)

euler20 = sum . map digitToInt . show $ product [1..100]
