---------------------------------
-- Chapter Baby's first functions
---------------------------------

-- Function definiton
-- Functions always return something
doubleMe x = x + x

-- Another function
doubleUs x y = doubleMe x + doubleMe y

-- The ' is a valid char. Convention : strict (non-lazy) or slightly modified versions
doubleSmallNumber' x = if x > 100
                        then x
                        else doubleMe x

-- yo is not a variable, but a function without parameter !
yo = "Yo !"
-- yo = 4 -- Fail because definitions are immutable



---------------------------------
-- Chapter An intro to lists
---------------------------------

-- Lists are homogeneous array-like data structures
lostNumbers = [1,5,9,13,26,49]

-- ++ concatenates 2 lists
one2four = [1,2] ++ [3,4] -- => [1,2,3,4]

-- Strings are just lists of characters
hello = ['h', 'e', 'l', 'l', 'o'] -- => "hello" is just syntactic sugar

-- : prepend to the beginning
aSmallCat = 'A':" SMALL CAT"
-- single char strings are single quoted, multi chars strings are double quoted

-- : and ++ can be combined
one2five = 1:[2,3] ++ [4,5]

-- !! retrives element at specified index
fourthLetter = aSmallCat !! 3 -- => 'M'

-- !! works on a list of lists too (and presumably anything that works on lists)
lyst = [[1], [2]]
lyst1 = lyst !! 0 -- => [1]
lyst11 = (lyst !! 0) !! 0 -- => 1

---------------------------------
-- Chapter Texas ranges
---------------------------------

one2twenty = [1..20]

-- ranges can omit first or last of range
-- [1..] -- 1 to infinity
-- ['a'..] -- a to... last Unichode char ? I don't know.

-- range can have a step
evenNumbers = [2,4..10]

-- step works on chars too !
evenChars = ['a', 'c' .. 'z']

-- reverse ranges have to specify steps, since default step increase value
reverseNumbers = [20,19..1] -- [20..1] doesn't work
reverseChars = ['Z', 'Y' .. 'A'] -- ['Z'..'A'] doesn't work either

-- Haskell is lazy, so it won't evaluate infinite lists if we take only part of it
first20 = take 20 [5,10..]
lolol = take 20 (cycle "lol ")

-- Equivalent : twenty5s == twenty5s' => True
twenty5s = take 20 (repeat 5)
twenty5s' = replicate 20 5

