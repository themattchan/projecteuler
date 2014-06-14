sumdigits number = add 0 number
  where
    add acc 0 = acc
    add acc n = add (acc + n `mod` 10) (n `div` 10)

main  = print (sumdigits (product [1..100]))
