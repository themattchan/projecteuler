import Data.Digits

isPalindromic b n = let num = digits b n in
  reverse num == num

palBinDec n = isPalindromic 2 n && isPalindromic 10 n

euler36 = sum $ filter palBinDec [1..1000000]
