module Main where

flipList :: [Integer] -> [Integer]
flipList [] = []
flipList (head:tail) = flipList tail ++ head : []

allPairs :: [String] -> [(String, String)]
allPairs list = [(a, b) | a <- list, b <- list, a < b]

multiplicationTable :: [(Integer, Integer, Integer)]
multiplicationTable = 
    do { let range = [0..12]
       ; let pairs = [(a, b) | a <- range, b <- range, a <= b]
       ; [(a, b, a * b) | (a, b) <- pairs]
       }

main = putStrLn "load module in ghci to test functions"