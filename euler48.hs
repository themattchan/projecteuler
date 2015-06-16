import Control.Monad

euler48 = reverse . take 10 . reverse . show . sum . map (join (^)) $ [1..1000]
