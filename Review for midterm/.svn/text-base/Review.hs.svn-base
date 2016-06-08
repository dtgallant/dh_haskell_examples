{------------------------------------------------------------------------------
Review for 260 Midterm
------------------------------------------------------------------------------}


--1.
cmpr [] ys = True
cmpr (x:xs) [] = False
cmpr (x:xs) (y:ys) = x < y || (x == y && cmpr xs ys)

--what do these expressions evaluate to?

cmpr "cast" "cats"
cmpr "cat" "cats"
cmpr "cat" "cast"
cmpr "cat" "cat"

--2. define a function, secondLast that, given a list xs, returns the second-last component 
if the list is sufficiently long (and aborts the evaluation with an error message otherwise); 
for example, secondLast[4, 2, 5, 3, 9] == 3




--3. Design a function select that, given a non-empty list ns of integers, returns a pair (m, ms) 
such that m is the smallest component value of ns and ms is the list of all the other components of 
ns; for example,

select [5,3,6,2,7,1,3,1] == (1, [5,3,6,2,7,1,3])


--Note that if the smallest component value occurs more than once, only one occurance is removed


-- 4. Use the function select to define a function sort that, given any list ns of integers, 
returns a re-arrangement of ns into ascending order; for example,

sort [5,3,6,2,7,1,3,1] == [1,1,2,3,3,5,6,7]




-- 5. Define a haskell function all that, given a predicate p and a list xs, returns False if a 
component of xs doesn't satisfy p and True otehrwise; for example,

all (<0) [1,2,4,7] && not(all (>0) [1, -2]) && all (>0) [] == True



-- 6.  Define a function interlace that, given two lists xs1 and xs2, returns a list with 
successive components as follows:

--1st component of xs1
--1st component of xs2
--2nd component of xs1
--2nd component of xs2

--and so on.  If one list is longer than the other, its extra components are simply appended 
to the result; for example,

interlace "abc" "wxyz" == "awbxcyz"


-- 7. design a funciton noDups that, given a sorted list xs, returns the list with all 
duplicate components removed, for example:

noDups [2,2,2,3,3,4,5,5] == [2,3,4,5]



--PRACTICE FROM TEXTBOOK

--pg. 35

-- 3.1  Give another verison of the definition of "exclusive or" which works informally 
thus: "exclusive or of x and y will be True if either x is True and y is False, or vice versa'

-- 3.7  define a function

threeDifferent :: Int -> Int -> Int -> Bool

--so that the result of threeDifferent m n p is True oly if all three of the numbers m, n, 
and p are different

--what is your answer for threeDifferent 3 4 3 ?  Explain why you get the answer that you do


-- 3.11 Give definitions of the functions:

min :: Int -> Int -> Int
minThree :: Int -> Int -> Int -> Int

--which calculate the minimum of two and three integers respectively


-- 3.12  Define a function to convert small letters to capitals which returns unchanged 
characters which are not small letters


-- 3.14  a. give a function to return the average of three integers

averageThree :: Int -> Int -> Int -> Float

--using this function define a function

howManyAboveAverage :: Int -> Int -> Int -> Int

--which returns how many of its inputs are larger than their average value.


-- 4.4  Give a definition of the function

howManyOfFourEqual :: Int -> Int -> Int -> Int -> Int

--which is the analogue of howManyEqual for four numbers

--note, see more questions later if necessary, too long to write out


-- 4.5  Define the function rangeProduct which, when given natural numbers m and n 
returns the product: m*(m+1)*...*(n-1)*n

--you should include in yoru defintion the type of the function, and your function 
should return zero when n is smaller than m.


-- 4.7  Using the addition function over the natural numbers, give a recursive definition of 
multiplication of natural numbers



-- 4.8 The integer square root of a positive integer n is the largest integer whose square is 
less than or equal to n.  For instance, the integer square roots of 15 and 16 are 3 and 4 
respectively.  Give a primitive recursion definition of this function.

-- 4.10  given a function f of type Int -> Int give a recursive definition of a function of 
type Int -> Bool which on input n returns True if one or more of the values f 0, f 1, ... ,
 f n is zero and False otherwise


-- 4.13 Give a recursive definition of a function to find the highest common factor of 
two positive integers

-- 5.1 Give a definition of the function

maxOccurs :: Int -> Int -> (Int, Int)

--which returns the max of two ints, together w/ the number of times it occurs.  
Using this, or otherwise, define the function

maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)


-- 5.2 Give a definition of a function

orderTriple :: (Int, Int, Int) -> (Int, Int, Int)

--which puts the elements of a triple of three integers into ascending order.  you might 
like to use maxThree, middle, and minThree functions defined earlier.


-- 5.5 What value has the expression [0, 0.1 .. 1]?  Check your answer in Hugs and explain 
any discrepancy there might be between the two.


-- 5.13  Define the functions borrowers, borrowed, and numBorrowed.  To define numBorrowed
 you will probably need the length function which returns the length of a list


-- 5.14  Give calculations of:
--returnLoan exampleBase "Alice" "Asterix"
--returnLoan exampleBase "Alice" "Little Women"


-- 5.18

shift :: ((Int,Int), Int) -> (Int,(Int, Int))
shift ((x,y), z) = (x, (y,x))

--What is the most general type from shift, if the type declaration is omitted?


--5.20  Define a function

romanDigit :: Char -> String

--which converts a digit to its representation in Roman numerals, so at '7' it will have 
a value "VII" and so on

--5.23  Give a function

duplicate :: String -> Int -> String

--which takes a string and an integer n.  The result is n copies of the string joined together.  
If n is less than or equal to 0, the result should be the empty string, "", and if n is 1, 
the result will be the string itself.



-- 5.24  Give a function

pushRight :: String -> String

--which takes a string and forms a string of length linelength by putting spaces at the
 front of the string.  If linelength were 12 then pushRight 'crocodile' would be '    crocodile'. 
 How would you make linelength a parameter of this function?


-- 7.1 Give a pattern matching definition of a function which returns the first integer in 
a list plus one, if there is a one, and returns zero otherwise.


-- 7.2  Give a pattern-matching definition of a function which adds together the first two 
integers in a list, if a list contains at least two elements; returns the head element 
if the list contains one, and returns zero otherwise


-- 7.3  Give solutions to the previous two questions, without using pattern matching


-- 7.4 Define the function

product :: [Int] -> Int

--which gives the product of a list of integers, and returns 1 for an empty list; why is 
this particular value chosen as the result for hte empty list?

-- 7.5 Define the functions

and, or :: [Bool] -> [Bool]

--which give the conjunction and disjunction of a list of Booleans.  For instance,

and [False, True] = False
or [False, True] = True

--on an empty list and gives True and or gives False; explain the reason for these choices


--7.6  define a function

elemNum :: Int -> [Int] -> Int

--so that elemNum x xs returns the number of times tha tx occurs in the list xs.--do it with
 list comprehension and built in functions as well as primitive recurison

-- 7.7 Define a function

unique :: [Int] -> [Int]

--so that unique xs returns the list of elements of xs which occur exactly once.

--7.16  How would you define a function zip3 which zips together three lists?  Try to 
write a recursive definition and also one which uses zip oinstead; what are the advantages 
adn disadvantages of the two different definitions?



--7.17  (pg. 128)  How would you modify qSort to sort a list into descending order?  
How would you ensure that qSort removed duplicate elements?


-- 7.18  see pg. 128, define functions which decide whether one string is a sublist 
or a subsequence of another string


-- 7.24 design a function

wc :: String -> (Int, Int, Int)

--which when given a text string returns the number of characers, words, and lines in
 the string.  end of line is signaled by \n


-- 7.25 define

isPalin :: String -> Bool

--which tests whether the string is a palindrome


-- 9.1  Write doubleAll [2, 1, 7], using primitive recursion, maps, and list comprehension
 (separetely)


-- 9.6  Give definitions of functions to take a list of integers, ns, and
--return the list consisting of the squares of the integers in ns;
--return the sum of squares of items in ns;
--check whether all items of the list are greater than zero


-- 9.8  State the type and define a function twice which takes a function from integers to
 integers adn an input integer, and whose output is the function applied to the input twice. 
 For instance, with the double function and 7 as input, the result is 28.  What is the most
 general type of the function you have defined?

-- 9.9  Give the type of and define a function iter so that
iter n f x = f (f (f .. (f x).. ) )

--where f occurs n times on the right-hand side of the equation.  For instance we should have

iter 3 f x = f (f (f(x)))

--iter 0 f x should return x

--9.11  How would you define the sum of the squares of the natural numbers 1 to n using map 
and foldr

-- 9.12 Define a function to give the sum of squares of the positive integers in a list of integers

-- 9.16 define
filterFirst :: (a -> Bool) -> [a] -> [a]

--so that filterFirst p xs removes the first element of xs which does not have the property p. 
 Use this to give a versionof returnsLoan which returns only one copy of a book.  What
 does your function do on a list all of whose elements have property p?


--9.17 

filterLast :: (a -> Bool) -> [a] -> [a]

--which removes the last occurance of an element of a list without property p?  How coudl 
you define it using filterFirst?


-- 9.19 Give the type and definition of the generalization dropUntil of the function dropWord

-- 9.22  The function getLine of Chapter 7 has a polymorphic type - what is it?  How coudl you
 generalize the testin this function?  If you do this, does the type of the function become 
 more general?  Explain your answer.


-- 10.1  Redefine the function printBill from the supemarket biling exercise in section 6.4 
so tha tcomposition is used.  Repeat the exercise using forward composition, >.>

-- 10.3 define a function composeList wihc compses a list of functions into a single function.
  Yo shoudl give the type of comjposeList, and explian why the function has this type.  What 
  is the effect of yoru funciton on an empty list of functions?


-- 10.5 What is the type and effect of the function

\n -> iter n succ


-- 10. 9 define a function total

total :: (Int -> Int) -> (Int -> Int)

--so that total f is the function which at value n gives the total

f 0 + f 1 + ... + f n


-- 10.12 use paritial applications to define the functions comp2 and total given in 
section 10.3 and it's exercises


-- 10.13  Find operator sections sec1 and sec2 so that

map sec1 . filter sec2

--has the same effect as 

filter (>0) . map (+1)

-- 10.14  define

chessBoard :: Int -> Picture

--so that chessBoard n is a picture of an n by n chess board


--10.23  How would you redefine sortLs so that duplicate copies of an item are not removed? 
 For the index, this mean sthat if a word occurs twice on line 123 say, then 123 occurs 
 twice in the index entry for that word


--10.33  Using the principle of extensionality, show that function composition is
 associative: that is, for all f, g, h,

f . (g . h) = (f. g) . h

-- 10.37 Using induction, prove that for all natural numbers n,

iter n id = id


-- 10.39  Prove that for all ys and zs the equation

map f (ys++zs) = map f ys ++ map f zs

-- 10.42 Prove that for all finite lists xs, and functions f,

concat (map (map f) xs) = map f (concat xs)

-- 10.44 Prove for all finite lists xs that

filter p (filter q xs) = filter (p &&& q) xs

--where the operator &&& is defined by

p &&& q = \x -> (p x && q x)

-- 12.2  Define the function numEqual which takes a list of items, xs say, and an 
item, x say, and returns the number of times x occurs in xs.  What is the type of your 
function?  How could you use numEqual to define member?


-- 12.5  Write a function to convert an integer into a String, and hence show how Int 
can be an instance of Visible


-- 12.10  Define

showBoolFun :: (Bool -> Bool) -> String

--which displays a Boolean function as a table


-- 13.3  Show that we can unify (a, [a]) with (b,c) to give (Bool, [Bool])


-- 13.11 Define a polymorphic sorting function, and show how its type is derived from 
the type of the ordering relation

compare :: Ord a => a -> a -> Ordering

-- 13.12  Investigate the types of the following numerical functions; you will find
 that the types refer to some ofthe built-in numeric classes

mult x y = x*y
divide x = x 'div' 2
share x = x /2.0

--recall that these can be given more restrictive types, such as

divide :: Int -> Int

--by explicitly asserting their types as above


-- 14.1  Redefine the function weather :: Season -> Temp so that a guard or an if ... 
is used rather than pattern matching.  Which of the definitions is preferable in your opinion?

-- 14.2  Define the type of months as a Haskell algebraic type.  Give a function which 
takes a month to its appropriate season - in doing this you might want to use the ordering 
on the type, which is derived as explained above.

-- 14.6  Define a function which decides whether a Shape is regular: a circle is regular, 
a square is a regular rectangle, and being an equilateral makes a triangle regular


-- 14.8 Define == over Shape so that all circles of negative radius are equated.  How 
would you treat rectangles with negative sides?



-- 14.12 Some houses have a number, others have a name.  How would you implement the
 type of 'stirngs or numbers' used as part of an address?  Write a function which gives 
 the textual form of one of these objects.  Give a definition of a type of names and 
 addresses using the type you have defined.


-- 14.16  Define the function

size :: Expr -> Int

--which counts the number of operators in an expression.

-- 14.17 Add the operations of multiplication and integer division to the type Expr, 
and redefine the functions eval, show, and size to include these new cases.  What
 does your definition of eval do when asked to perform a division by zero?

-- 14.19  Give line by line calculations of

sumTree (Node 3 (Node 4 Nil Nil) Nil)
depth   (Node 3 (Node 4 Nil Nil) Nil)

-- 14.21  Define functions to return the left and right hand sub-trees of an NTree

-- 14.22 Define a function to decide whether a number is an element of NTree

-- 14.24  A tree is reflected by swapping left and right sub trees, recursively.  Define a 
function to reflect NTree.  What is the result of reflecting twice, reflect . reflect?

-- 14.25  define sort, which sorts a tree into a list, in ascending order.

--ex.

sort (Node 3 (Node 4 Nil Nil) Nil) = [3, 4]

-- 14.29  Define a function twist which swaps the order of a union

twist :: Either a b -> Either b a

-- (see more of section 14 for Gtree and other tree problems)


-- 14.35  Using the functions mapMaybe and maybe, or otherwise, define

process : [Int] -> Int -> Int -> Int

--so that process xs n m takes the nth and mth items of the list of numbers, xs, and 
returns their sum.  Your function should return 0 if either of the numbers is not one 
of hte indices of the list:  for a list of length p, the indices are 0, .... , p-1 inclusive

-- 14.40  Design an algebraic data type to rep a record of vehicles that will use a
 particular car park.


-- 14.51  Design a collection of classes to model bank accounts.  These have different 
forms: current, deposit, and so on, as well as different levels of functionality.  Can 
you reuse the Named class here?


-- 14.52  Prove that the function weather from Sec. 14.1 has the same behaviour as:

newWeather = makeHot . isSummer

--when

makeHot True = Hot
MakeHot False = Cold
isSummer = (==Summer)

--recall that (==Summer) is an operator section whose effect is to test whetehr its
 argument is equal to Summer.


-- 17.1  Give a calculation of the expression

[x+y | x <- [1..4] , y <- [2..4] , x > y]

--17.2  Using the list comprehension notation, define:

subLists, subSequences :: [a] -> [[a]]

--which returns all the sublists and subsequences of a list.


-- 17.22  Define the infinite lists of factional and Fibonacci numbers,

factorial = [1,1,2,6,24,120,720,...]
fibonacci = [0,1,1,2,3,5,8,13,31,..]

-- 17.23  Give a definition of the function

factors :: Int -> [Int]

--which returns a list containing the factors of a positive integer


-- 17.28  How would you merge two infinite lists, assuming they are sorted?  
How would you remove duplicates from the list which results?  As an example, how 
would you merge the lists of powers 2 and 3?

-- 17.33  Prove that the lists

facMap = map fac [0 .. ]
facs = 1 : zipWith (*) [1 ..] facs

--are infinite



