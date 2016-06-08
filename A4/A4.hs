{------------------------------------------------------------------------------
CISC 260
Assignment 4
Authors:  Gallant, Dave 490 8089 
          Andrews, Caitlin 489 8572
          Hill, Graeme 500 0095
Last Revision:  3/14/05
------------------------------------------------------------------------------}
module A4 where

--algebraic type defintion for Binary Trees

data BinTree a = Nil | Node a (BinTree a) (BinTree a)
               deriving (Show, Eq, Ord, Read)

--in-order tree traversal
inorder :: BinTree a -> [a]
inorder Nil = []
inorder (Node val b1 b2) = (inorder b1) ++ [val] ++ (inorder b2)

--in-order tree traversal without concatenation, uses accumulator
inorder2 :: BinTree a -> [a] -> [a]
inorder2 Nil xs = xs
inorder2 (Node val lc rc) xs = inorder2 lc (val:inorder2 rc xs) 



--test trees

btree1 :: BinTree Integer
btree1 = Node 10 (Node 9 (Node 8 Nil Nil) (Node 7 Nil Nil)) (Node 6 (Node 5 (Node 4 Nil Nil) (Node 3 Nil Nil)) (Node 2 Nil Nil) )

btree2 :: BinTree Integer
btree2 = Node 10 (Node 9 Nil Nil) (Node 6 Nil Nil)




