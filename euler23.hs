divisor n = 1 : filter ((==0) . rem n) [2.. n `div` 2]
divisors = zip divisors (map divisors [1..28123])

abundant = filter (\x -> sum . (snd x) > x) divisors
