{--
_____________________________________________________________________________
Test module for AssocList.hs

CISC 260
Authors:  Gallant, Dave 490-8089
	      Hill, Graeme  500-0095
		  Andrews, Caitlin  489-8572
Last Revision: 2/9/05
___________________________________________________________________________ --}

module AssocListTest where
 
import AssocList

--test of all functions simultaneously, should evaluate to true
test1 = not(contains (exclude (include months2004 "abc" 99) "abc") "abc")

--test of include function, should replace ("feb, 29") w/ ("feb", 28)
test2 = include months2004 "feb" 28

--test of include function, to see if brand new value will be added correctly

test3 = include months2004 "dave" 08

--test of exclude function, should erase "mar" key entry

test4 = exclude months2004 "mar"

--test of exclude function, shouldn't change the list

test5 = exclude months2004 "dave"

--test of contains function, should return true for "jan"

test6 = contains months2004 "jan"

--test of contains function, should return false

test7 = contains months2004 "blah"

--test of search function, should return 31 for "dec"

test8 = search months2004 "dec"

--test of search function for value that doesn't exist

test9 = search months2004 "cookie monster"















