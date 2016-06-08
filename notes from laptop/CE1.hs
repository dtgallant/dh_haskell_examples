--CE1.hs
--1/24/05 class examples

--isSorted example

isSorted :: [Int] -> Bool

isSorted[] = True
isSorted[_] = True
isSorted(x:y:tail) = x <= y && isSorted(y:tail)


--contains :: a -> [a] -> Bool --w/ list of ints, you ask if int is in that list
contains _ [] = False
contains x (y:ys) = x== y --contains x ys

--include :: a -> [a] -> [a]
include x list
    | contains x list = list
    | otherwise = x:list

--union :: [a] -> [a] -> [a]
union [] list = list
union list [] = list
union (x:xs) list = union xs (include x list)

{--
intersection :: [a] -> [a] -> [a]
intersection [] _ = []
intersection _ [] = []
intersection (x:xs) set2 =
    | contains(x, set2) =
        x:(intersection xs set2)
    | otherwise = intersection xs set2
--}

--shortcuts for lists

{--

[3..10] means [3, 4, 5, 6, 7, 8, 9, 10]

[3, 5..11] means [3, 5, 7, 9, 11]

[3, 5..10] means [3, 5, 7, 9]

[5, 4..1] means [5, 4, 3, 2, 1]

[3, 4..2] means []

--list comprehensions (sec 5.5)

[x^2 | x <- [1..5] ] creates [1, 4, 9, 16, 25]

[isPrime a | a <- [2..10] ] creates [True, True, False, True, False, True, False, False, False

[n^2 | n <- [2..10], isPrime n]
 -[2..10] is the generator, isPrime n is the test

[num | num <- [1..100], mod num 7 == 1, isPrime num] result [1, 29, 43,71]

intersection set1 set2 = [x | x <- set1, contains x set2]

-pg 91

--}

