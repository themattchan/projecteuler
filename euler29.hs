import Data.List
import Data.Set as Set

euler29 = Set.size . Set.fromAscList . sort $ terms
  where terms = [a^b | a<-[2..100], b<-[2..100]]
