import Data.List (sort)

euler04 = last . sort $ filter isPalindrome three_products
  where three_products =  zipWith (*) [100..999] [100..999]
        isPalindrome n = let s = show n in reverse s == s
