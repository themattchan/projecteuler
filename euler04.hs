import Data.List (sort)

three_digits = [100..999]
three_products = [x * y | x <- three_digits, y <- three_digits]

isPalindrome :: Int -> Bool
isPalindrome number = let digits = toList number in
    digits == reverse (digits)
  where
    toList :: Int -> [Int]
    toList 0 = []
    toList n =  toList (n `div` 10) ++ [n `mod` 10 ]

euler04 = head $ reverse $ sort $ filter isPalindrome three_products
