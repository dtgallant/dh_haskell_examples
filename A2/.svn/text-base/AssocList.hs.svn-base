{- _____________________________________________________________________________
AssocList.hs
[B
CISC 260 Assignment 2
Authors:  Gallant, Dave 490-8089
	      Hill, Graeme  500-0095
		  Andrews, Caitlin  489-8572
Date of last revision: 2/9/05
____________________________________________________________________________ -}

module AssocList where

--test association list

months2004 = [("jan", 31), ("feb", 29), ("mar", 31), ("apr", 30), ("may", 31),("jun", 30), ("jul", 31), ("aug", 31), ("sep", 30), ("oct", 31), ("nov", 30),("dec", 31) ]


--given x, and an association list xys, tests whether xys contains an associati--on pair whose first component is x
 
contains dBase x
 = foldr1 (||) [ isThere m  | (m, d) <- dBase]
   where isThere m = (m == x) 


--given an association pair (x,y) and an association list xys, returns an assoc--iation list that is like xys but contains the pair (x,y) and does not contain-- another pair with the same key

--ex. months2005 = include ("feb", 28) months2004

include dBase mon dat
  | contains dBase mon = exclude dBase mon ++ [ (mon, dat)] 
  | otherwise = dBase ++ [ (mon, dat)]

--Search function

--given x and an association list xys, returns the y value associated with key --x in xys (aborts w/ error message if there is no such association pair)


search dBase x
  | contains dBase x = [ da | (mon, da) <- dBase, mon == x ]
  | otherwise = error "no record found"

--Exclude function

--given x and an association list that is like xys, but with no pair having x as the first component

exclude dBase x
  = [ (mon, dat) | (mon, dat) <- dBase, mon /= x ]


