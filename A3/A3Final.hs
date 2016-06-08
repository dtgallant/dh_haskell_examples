{------------------------------------------------------------------------------
Assignment 3
CISC 260
Authors: Gallant, Dave 490 8089
         Andrews, Caitlin 489 8572
         Hill, Graeme 500 0095
Date of last revision: 3/02/05
-----------------------------------------------------------------------------}
module A3Final where

--data type definitions

data GTree a = MakeGTree a [GTree a]
   deriving (Eq, Ord, Show, Read)
data BinTree a = Nil | Node a (BinTree a) (BinTree a)
   deriving (Eq, Ord, Show, Read)

type Forest a = [GTree a]


--general trees for testing

tt1 :: GTree Int
tt1 = MakeGTree 1 [MakeGTree 4 [] ]

tt2 :: GTree Int
tt2 = MakeGTree 2 [MakeGTree 5 [], MakeGTree 6 [MakeGTree 8 [], MakeGTree 9 []], MakeGTree 7 [] ]

tt3 :: GTree Int
tt3 = MakeGTree 3 []

--test forest, aka list of general trees

testForest :: Forest Int
testForest = [tt1, tt2, tt3]

--test binary trees

btree1 :: BinTree Int
btree1 = Node 3 (Node 5 (Node 7 Nil Nil) (Node 9 Nil Nil) ) (Node 6 (Node 15 Nil Nil) (Node 12 Nil Nil) )

btree2 :: BinTree Int
btree2 = Node 1 (Node 4 Nil Nil) (Node 2 (Node 5 Nil (Node 6 (Node 8 Nil (Node 9 Nil Nil)) (Node 7 Nil Nil))) (Node 3 Nil Nil) )         


--the guts of the program

toBinTree :: Forest a -> BinTree a
toBinTree [] = Nil
toBinTree ((MakeGTree a children):xs) = Node a (toBinTree children ) (toBinTree xs)  

toForest :: BinTree a -> Forest a
toForest (Nil) = []
toForest (Node a Nil Nil) = [MakeGTree a []]
toForest (Node a t1 t2) = MakeGTree a (toForest(t1)):toForest(t2) 

breadthFirst :: Forest a -> [a]
breadthFirst [] = []
breadthFirst ((MakeGTree a children):xs) = a:breadthFirst(xs++ children)   





