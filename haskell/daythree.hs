module Main where

findByKey :: String -> [(String, a)] -> Maybe a
findByKey key [] = Nothing
findByKey key ((k, val):tail)
    | k == key = Just val
    | otherwise = findByKey key tail

type Maze = [Row]
type Row = [Node]
type Node = Maybe (Int, Int)

getNode :: Int -> Int -> Maze -> Node
getNode x y maze = (maze !! y) !! x

connectedNodes :: (Int, Int) -> Maze -> [Node]
connectedNodes (x, y) maze = [
    (getNode (x - 1) y maze),
    (getNode (x + 1) y maze),
    (getNode x (y - 1) maze),
    (getNode x (y - 1) maze)]

testMaze :: Maze
testMaze = [
    [Just (0, 0), Just (1, 0), Nothing, Nothing],
    [Nothing, Just (1, 1), Nothing, Nothing],
    [Nothing, Just (1, 2), Just (2, 2), Just (3, 2)],
    [Nothing, Just (1, 3), Nothing, Nothing],
    [Nothing, Just (1, 4), Just (2, 4), Just (3, 4)]]

-- couldn't figure out how to solve the maze :(


main = putStrLn "load module in ghci to test functions"