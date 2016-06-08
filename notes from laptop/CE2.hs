--CE2.hs
--class notes for 1/25/05

--tuple

studentRecord :: (String, Int, Float)
studentRecord = ("Harry Potter", 1234567, 92.5)

--tuples used to return more than one data value, to combine different data types, to specify a fixed number of elements combined together

--min and max ex

minAndMax :: Int -> Int -> (Int, Int)
minAndMax x y
          | x >= y = (y,x)
          | y >= x = (x, y)

--more efficient version

minMax :: [Int] -> (Int, Int)
minMax[x]= (x, x)
minMax(x:xs) = (min x tailMin, max x tailMax)
               where
               (tailMin, tailMax) = minMax xs


--used defined types, structuring data ex

type ClassList = [(String, Int, Float)]


--another ex.

average :: ClassList -> Float
average list = sumMarks list / fromInteger(length list)
where

   SumMarks[(_, _, mark)] = mark
   SumMarks[(_, _, mark):tail] = mark + sumMarks tail

--alternate way to do this example

sumMarks list = sum [marks| (_, _, mark) <- list]

--database lookup function

books dbase person = [books|(p, book) <- dbase, p == person]                         

--note Integer has more precision than Int


--to return list of books

bookList dbase = [bk | (_,bk) <- dbase]

--zip and unzip functions

zip :: [a] -> [b] -> [(a,b)]
--ex
zip [1, 2, 3] ['a', 'b', 'c'] = [(1,'a'),(2, 'b'), (3, 'c')]

unzip :: [(a, b)] -> ([a], [b])


--anothe way to extract from database

bookList dbase = books
                 where (_, books) = unzip dbase
