{-
-- This is really slow
sumAmicable = sum $ filter isAmicable [1..10000]
  where
    isAmicable n = d(d(n)) == n
    d n = sum [x | x <- [1..(n-1)], n `mod` x == 0]
-}

import qualified Data.IntMap as IM
import Data.List

d n = sum [x | x <- [1..(n-1)], n `mod` x == 0]

fastAmicable = sum . map fst $ filter (uncurry (/=)) amicables
    where ds        = map    (\x -> (x, d x)) [1..10000]
          sums      = foldl' (\ m (n, d) -> IM.insert n d m) IM.empty ds
          amicables = filter (\(n, d) -> case IM.lookup d sums of
                                              Just s -> s == n
                                              Nothing -> False) ds
