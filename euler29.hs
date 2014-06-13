as = [2..100]
bs = [2..100]
terms = [a^b | a <- as, b <- bs]

len = (length (foldl (\acc x -> if x `elem` acc
							   then acc
							   else x : acc) [] terms))

main = print len
