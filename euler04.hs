import Data.List (sortBy)

euler04 = head . sortDesc . filter isPalindrome $ three_products
  where three_products = [x*y | x<-[100..999], y<-[100..999]]
        isPalindrome n = let s = show n in reverse s == s
        sortDesc       = sortBy (flip compare)
