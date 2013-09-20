---------------------
-- Hello World
---------------------

-- do wraps several I/O actions into one
main = do
    line <- getLine
    if null line
        -- return ONLY wraps a pure value into an I/O one,
        -- it doesn't "return" as most other languages (a.k.a. break the flow)
        -- it's just a function as another
        then return ()
        else do
            putStrLn $ reverseWords line
            main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
