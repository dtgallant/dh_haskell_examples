{------------------------------------------------------------------------------
Class Review Questions
Review2.hs
3/14/05
------------------------------------------------------------------------------}

module Review2 where


-- 1. (a) design a haskell function

noDup :: Eq a => [a] -> [a]

--such that, for any suitable list xs, noDup xs returns the list with all duplicate components in xs removed but with all first occurrences of components retained and in the same order as in xs; for example,

--noDup [2,3,2,4,3,1] == [2,3,4,1]

testlist = [2,3,2,4,3,1]
testlist2 = [2,2,3,4,5,5]

noDup [] = []

noDup (x:y:ys) | foldr1 (x==) y (y:ys) = noDup y:ys
               | otherwise = x:noDup y:ys

--noDup (x:y:ys)   | foldr1 (||) [ n | n <- (x:y:ys), x==y] = noDup y:ys
--                 | otherwise = x:noDup y:ys


--noDup (x:y:ys) | x = [ n | n <- (x:y:ys), x == y]
--noDup (x:y:ys) | x == y = x:noDup ys
  --             | otherwise =  x:y:noDup ys

--noDup (x:y:xs) = [match n | n <- (x:y:xs)]
  --             where match n = (x /= y) 



--you may use functions in the standard prelude without defining them

-- (b) Briefly explain the significance of Eq a => in the type given for noDup above



{--


-- 2.  What type will be inferred for the following function by a haskell interpreter?

mystery f x y g
       | x > y = f (g x) (g (g y))
       | otherwise = f (g y) (g (g x))

-- 3.  Consider the following definition

mystery f xs = foldr ff [] xs
  where x 'ff' ys = ys ++ [f x]

-- (a) what is the result of mystery (== 0) [1, 0, -1, 2, 0]?

-- (b) describe what mystery does in general

-- (c) define an equivalent but more efficient version of the function using foldl


-- 4.  consider the following Haskell definition:

transform :: [Int] -> [Int]
transform :: ns = zipWith (+) ns (0 : transform ns)

--what is the value of transform [2, 4, 6, 8] ?

-- 5. Prove the following equivalence

filter p (filter q xs) == filter q (filter p xs)

--for all appropriate predicates p and q and finite lists xs.


--}

{--

-- 6. Consider the following Haskell definition:

ncomp f n x | n==0 = x
            | otherwise = f(ncomp f (n-1) x)

-- (a) What type would be inferred for ncomp by a haskell processor?


-- (b) What would be the value of the following expression:

--[ ncomp (\n -> 2*n) i 1 | i <- [0..] ]

-- (c) Show how to define a list that is equivalent to

--
[ x, f x, f(f x), ... , ncomp f i x, ... ]
 
   --but with each component (except the first) computed efficiently from the preceding component instead of bein computed independently using ncomp


--}



{--

-- 7.  Assume the following Haskell definition

data InfBinTree a = Node a (InfBinTree a) (InfBinTree a)

--Define a function 
--infBT :: [a] -> InfBinTree [a]

infBT (x:xs) = Node x:xs (infBT 0:x:xs) (infBT 1:x:xs)

--such that the function call

--infBT ""

--returns the following tree (see notes)

--}