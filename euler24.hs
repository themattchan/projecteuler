import Data.List (sort,permutations)

res = (!! 999999) . sort $ permutations ['0'..'9'] --make it print a number

main = print res
