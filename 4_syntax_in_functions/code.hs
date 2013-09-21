--------------------
-- Pattern matching
--------------------

head' :: [a] -> a
head' [] = error "No empty list please"
head' (x:_) = x



--------------------
-- Where!?
--------------------

percentOf :: (RealFloat x) => x -> x -> String
x `percentOf` y
    | p == 0    = "Well, O%."
    | p < 50    = "Less than a half"
    | p == 50   = "Gand-Half !"
    | p < 100   = "More that a half"
    | p == 100  = "Full !"
    | otherwise = "Too much, man."
    where p = x / y * 100



--------------------
-- Playground
--------------------

-- Count the number of spaces in a String
nbSpaces :: String -> Int
nbSpaces "" = 0
nbSpaces x  = length $ filter (== ' ') x