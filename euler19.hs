import Data.Time.Calendar
import Data.Time.Calendar.WeekDate

euler19 = length . filter id
  $ do
  y  <- [1901..2000]
  m  <- [1..12]
  let (_,_,d) = toWeekDate $ fromGregorian y m 1
  return $ d == 7
