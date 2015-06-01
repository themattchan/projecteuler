import Data.Char (digitToInt)

euler16 = sum . map digitToInt $ show (2^1000)
