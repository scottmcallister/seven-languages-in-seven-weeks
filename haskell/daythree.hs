module Main where

findByKey :: String -> [(String, a)] -> Maybe a
findByKey key [] = Nothing
findByKey key ((k, val):tail)
    | k == key = Just val
    | otherwise = findByKey key tail

main = putStrLn "load module in ghci to test functions"