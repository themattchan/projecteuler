module Euler206 where

import Data.List.Split

-- 1_2_3_4_5_6_7_8_9_0
-- smallest number whose square ends with 0 => 10
-- 10^2 => 100, squared number must end with TWO 0s
-- can reduce search by removing last two 0s from big numbers
-- multiply answer by 10 to recover

minB = floor   . sqrt . fromIntegral $ 10203040506070809 -- ++ 00
maxB = ceiling . sqrt . fromIntegral $ 19293949596979899 -- ++ 90

candidates = [minB..maxB]
revCands   = [maxB, maxB-1..minB]

fitsTemplate :: Int -> Bool
fitsTemplate = ("123456789" ==) . map head . chunksOf 2 . show . (^2)

euler206 = head $ dropWhile (not . fitsTemplate) revCands
