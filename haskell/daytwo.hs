module Main where
import Data.List
import Data.Char

quickSort :: [Integer] -> [Integer]
quickSort a
    | length a == 0 = []
    | otherwise = quickSort(filter (< p) a) ++ filter (== p) a ++ (quickSort(filter (> p) a))
    where p = last a

sortByFunction :: (Ord a) => (a -> a -> Ordering) -> [a] -> [a]
sortByFunction compareFunction list = sortBy compareFunction list

getNumericString :: String -> String
getNumericString str = foldl (\newStr c -> if (isDigit c || c == '.') then newStr ++ [c] else newStr) "" str

toNum :: String -> Float
toNum str = read (getNumericString str) :: Float

everyThird :: Integer -> [Integer]
everyThird x = [x, (x + 3) ..]

everyFifth :: Integer -> [Integer]
everyFifth x = [x, (x + 5) ..]

everyEighth :: Integer -> [Integer]
everyEighth x = (zipWith (+) (everyFifth x) (everyThird x))

primeSequence :: [Integer]
primeSequence = filter isPrime [1..]

isPrime :: Integer -> Bool
isPrime n 
    | n <= 1 = False
    | n == 2 = True
    | otherwise = all (/= 0) lower_rem
    where lower_rem = init $ map (n `mod`) [2..n]

main = putStrLn "load module in ghci to test functions"