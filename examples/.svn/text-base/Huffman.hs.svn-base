{-
 Complete Huffman Coding example.  It defines two algebraic
 types needed to work with Huffman Codes and makes a start at the decode 
 function.  
 
 Done in class 14-15 Feb.  Added comments and testing code.

 CISC 260B, winter 2005.
 author: M. Lamb, based on two versions of Huffman encoding, one by
 Bob Tennent and one by Simon Thompson.
-}
module Huffman where
import AssocList

-------- PART 1: Decode a message using a decoding tree ------------------------

-- A decoding tree is a binary tree with characters at its leaves.
-- Each node (inner of leaf) also stores a frequency.  The frequencies
-- are not used for coding or decoding, but will be useful later
-- for creating the trees.  
data DecodingTree 
    = Leaf Char Int | 
      Branch Int DecodingTree DecodingTree 
      deriving(Show) 

-- A decoding tree for the 8 most frequent English letters.
sampleTree =
  Branch 1 
    (Branch 1 
      (Branch 1 
         (Leaf 'N' 1) 
         (Leaf 'S' 1) 
      ) 
      (Leaf 'E' 1) 
    ) 
    (Branch 1 
      (Branch 1 
        (Leaf 'O' 1) 
        (Leaf 'A' 1) 
      ) 
      (Branch 1 
         (Leaf 'T' 1) 
         (Branch 1 
            (Leaf 'R' 1) 
            (Leaf 'I' 1) 
         ) 
      ) 
    )

-- A type for tree transitions: left or right
data Transition = L | R
  deriving (Show,Eq)

-- A coded message is a list of tree transitions: for each character
-- in the message, a path from the tree root down to the leave for
-- that character 
type TransitionList = [Transition]

-- The decode function
decode :: DecodingTree -> TransitionList -> String

-- an empty list of transitions decodes to an empty string
decode _ [] = ""
decode tree list = decodeFromNode tree list
  where 
  -- When you get to a leaf, you've got a character 
  -- for the decoded string
  decodeFromNode (Leaf ch _) list = ch : decode tree list
  
  -- At an inner node, follow the left or right branch,
  -- according to the next transition
  decodeFromNode (Branch _ left right) (L:rest) =
    decodeFromNode left rest
  decodeFromNode (Branch _ left right) (r:rest) =
    decodeFromNode right rest
	
  -- If you run out of transitions at an inner node, there
  -- was an error in the encoded string
  decodeFromNode _ [] = error "incomplete"


-- two transition lists for testing
trainList = [R,R,L,R,R,R,L,R,L,R,R,R,R,R,L,L,L]
netList = [L,L,L,L,R,R,R,L]
decodeCorrect = (decode sampleTree trainList) == "TRAIN"
  && (decode sampleTree netList) == "NET"
  
  
------------- PART 2: Encode Strings into Transition Lists ---------------------

-- A translation table is an association list.  For each character, it stores
-- the list of transitions which encode that character.
type TranslationTable = [(Char,TransitionList)]

-- From a decoding tree, get a translation table
treeToTable :: DecodingTree -> TranslationTable
treeToTable tree = nodeToTable tree []
  where
  nodeToTable :: DecodingTree -> TransitionList -> TranslationTable
  -- first parameter: the node in the tree where we're starting
  -- second parameter: the path from the root to this node
  -- result: translation table for all leaves below this node
  nodeToTable (Leaf ch _) path = [(ch, path)]
  nodeToTable (Branch _ left right) path =
    nodeToTable left (path ++ [L]) ++ nodeToTable right (path ++ [R])

-- a translation table derived from our sample tree
sampleTable = treeToTable sampleTree

-- use a translation table to encode a string
encode :: String -> TranslationTable -> TransitionList
encode str table = concat (map (`search` table) str)

-- function to help us test decoding & encoding.
-- Encodes a string, decodes the result, and checks to
-- make sure we got the original back
checkString tree table str = str == copystr
  where
  encoded = encode str table
  copystr = decode tree encoded
  
-- test several strings at once
testSample = and (map (checkString sampleTree sampleTable) 
  ["TRAINER", "REST", "SET", "NEST", "TOAST", "TENT"])
  
------------- PART 3: Construct a decoding tree --------------

-- A frequency list is an association list, giving the
-- relative frequencies of the symbols in our alphabet.
-- We will assume that frequency lists come sorted in
-- non-decreasing order by frequency.
type FrequencyList = [(Char,Int)]
shortFreqList :: FrequencyList
shortFreqList = [('S',8),('N',9),('O',10),('T',10),
                 ('I',11),('R',11),('A',12),('E',16)]


-- Translates a frequency list into a list of decoding
-- trees (all leaves)
freqListToTreeList :: FrequencyList -> [DecodingTree]
freqListToTreeList list = map convert list
  where
  convert :: (Char,Int) -> DecodingTree
  convert (ch,i) = Leaf ch i

-- Gets the top-level frequency from a decoding tree
getFreq :: DecodingTree -> Int
getFreq (Leaf _ f) = f
getFreq (Branch f _ _) = f

-- Combines two decoding trees.  The result is a 
-- "branch" node with the two parameters as its
-- children.  The frequency of the result is the sum
-- of the frequencies of the children.
combine :: DecodingTree -> DecodingTree -> DecodingTree
combine t1 t2 = Branch totalFreq t1 t2
  where
  totalFreq = getFreq t1 + getFreq t2

-- inserts a tree into a list of trees, in the
-- proper sorted position
insert :: DecodingTree -> [DecodingTree] -> [DecodingTree]
insert tr [] = [tr]
insert t1 (t2:tail)
  | getFreq t1 <= getFreq t2 = t1:t2:tail
  | otherwise = t2:(insert t1 tail)

-- One step in the process of reducing a list of
-- trees to a single tree.  Combines the first
-- two trees into a new tree.
-- Assumes list length > 1
reduceStep :: [DecodingTree] -> [DecodingTree]
reduceStep (t1:t2:tail) = insert newTree tail
  where
  newTree = combine t1 t2

-- Reduces a list of trees to a single tree by
-- applying reduceStep repeatedly.  Assumes
-- list length > 0.
reduceList :: [DecodingTree] -> DecodingTree
reduceList [t] = t
reduceList list = reduceList (reduceStep list)

-- Create an optimal decoding tree from a frequency list.
createTree :: FrequencyList -> DecodingTree
createTree freqList = reduceList (freqListToTreeList freqList)

-- A minimal decoding tree derived from the short frequency list above
minTree = createTree shortFreqList

-- Test this minimal tree
minTable = treeToTable minTree  
testMin = and (map (checkString minTree minTable) 
  ["TRAINER", "REST", "SET", "NEST", "TOAST", "TENT"])
  
-- Compare string sizes for the hand-made tree and the minimal tree.
-- Use a nonsense string which has the exact frequencies predicted
-- by the frequency list.  Evaluate the reportSizes function to see
-- a report which will show that the tree created with Huffman's 
-- algorithm does slightly better than the hand-made tree.
longString = "SSSSSSSSNNNNNNNNNNOOOOOOOOOOTTTTTTTTTT" ++
                "IIIIIIIIIIIRRRRRRRRRRRAAAAAAAAAAAAEEEEEEEEEEEEEEEE"
encodedWithSample = encode longString sampleTable
encodedWithMin = encode longString minTable
reportSizes = putStr (
  "handmade table produced list of " ++ show (length encodedWithSample) ++
  " transitions\n" ++
  "minimal table produced list of " ++ show (length encodedWithMin) ++
  " transitions")


  





  








  
