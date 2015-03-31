module Euler18 (maxPath) where

tri = [
    [75],
    [95, 64],
    [17, 47, 82],
    [18, 35, 87, 10],
    [20, 04, 82, 47, 65],
    [19, 01, 23, 75, 03, 34],
    [88, 02, 77, 73, 07, 63, 67],
    [99, 65, 04, 28, 06, 16, 70, 92],
    [41, 41, 26, 56, 83, 40, 80, 70, 33],
    [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
    [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
    [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
    [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
    [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
    [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]]

{- Solution:
Notice that (ex 1)

 a
x y

has two connections, ax and ay. If we remove the least weight on the bottom row,
there will be a one-to-one mapping, if we sum the two rows.

and (ex 2)

 a b c    => a b c   =>  a+w b+y c+z
w x y z      w y z

has pairs aw ax, bx, by, cy, cz

If we remove the smallest element from the bottom list, wherever it may be, then
the smallest sum(s) between pairs is removed. (Because if the smallest element
is say x, is removed, then the smallest sum of pairs aw, ax where w > x will
also be gone. Ditto between bx and by)
Then the two lists will also have a one-to-one mapping (ref ex 1).

So, starting from the bottom (nth), remove the smallest element by comparing
pairs formed by adjacent members (eg. wx xy yz => w y z if x<w<y<z), then
replace the n-1th row with (n-1)+n, and recurse.

With each iteration, the longest row is eliminated, until the whole triangle is
reduced to a list [[x]], where x is the max path.
-}

maxPath :: [[Int]] -> Int
maxPath [[x]]    = x
maxPath (x:y:zs) =  maxPath $ reduceTri (removeMin x)  y : zs
    where
      -- returns a list with length (length ys) -1
      removeMin ys  = zipWith max ys (tail ys)
      reduceTri     = zipWith (+)

soln = maxPath $ reverse tri

-- from haskell wiki, a more unreadable implementation of the same algorithm
-- foldr1 starts from the end, using the last element as the accumulator
problem_18 = head $ foldr1 g tri
  where
    f x y z = x + max y z
    g xs ys = zipWith3 f xs ys $ tail ys
{- zipWith3 takes 3 lists, applies f with the elements of 3 lists as input and returns a list
   zipWith3 f(x,y,z) xs ys zs => [f(x1,y1,z1), f(x2,y2,z2)...]
 -}
