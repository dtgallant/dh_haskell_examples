--class notes for 1/31/05

--list comprehension

map f list

--equivalent to

[ f x | x <- list ]

filter p list --used to filter something out

--combination

[ f x | x <- list, p x ]

map f (filter p list)

[x^2 | x <- list, isPrime x, mod x 7 == 1]
--two filters and a map

map square (filter isPrime (filter sevenTest list))
    where
    square n = n * n
    sevenTest n = mod n 7 == 1

--example

type ClassList = [ (String, Int, Float)]

findStudents :: ClassList -> Float -> Float -> ClassList
findStudents clist low high =
    filter in Range clist
    where in Range (_, _, m) =
              low <= m && m <= high


--accumulators

-- reverse a list

reverse :: [a] -> [a]
reverse[] = []
reverse(x:xs) = reverse xs ++ [x]
--simple, but inefficient, problem is "++" operator


--trace, in detail, the reverse function

reverse(1:2:3:[]) = reverse(2:3:[]) ++ [1]
(reverse(3:[]) ++ [2]) ++ [1]
((reverse[] ++ [3]) ++ [2]) ++ [1]
(([] ++ [3]) ++ [2]) ++ [1]

((3:[] ++ (2: [])) ++ (1:[]))
(3:([] ++ (2:[])) ++ (1:[]))
(3:2:[]) ++ (1:[])
--and so on.....very long process
--10 steps needed to reverse 3 element list

--speed up using accumulator

reversePlus :: [a] -> [a] -> [a]
--reverse list1, add it to the front of list2

reversePlus [1, 2, 3] [4, 5, 6] = [3, 2, 1, 4, 5, 6]
--second parameter is the accumulator

reversePlus [] accum = accum
reversePlus (x:xs) accum =
 reversePlus xs (x: accum )

--define reverse using reversePlus

reverse lis = reversePlus lis []

--walk through function
reverse (1:2:3:[])=
reversePlus(1:2:3:[]) []
reversePlus(2:3:[]) (1:[])
reversePlus(3:[]) (2:1:[])
reversePlus([]) (3:2:1:[])
3:2:1:[]
[3, 2, 1]



