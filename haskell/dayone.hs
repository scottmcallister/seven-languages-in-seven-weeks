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

mapColors :: [[(String, String)]]
mapColors =
    do { let colors = ["red", "green", "blue"]
       ; [ [("Tennesee", t), ("Mississippi", m), ("Alabama", a), ("Georgia", g), ("Florida", f)] |
           t <- colors, m <- colors, a <- colors, g <- colors, f <- colors,
           m /= t, m /= a,
           a /= t, a /= g, a /= f,
           g /= f, g /= t ]
       }

main = putStrLn "load module in ghci to test functions"