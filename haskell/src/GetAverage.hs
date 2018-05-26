module GetAverage where
-- Get the mean of an array
-- https://www.codewars.com/kata/get-the-mean-of-an-array/train/haskell

getAverage :: [Int] -> Int
getAverage marks = (sum marks) `div` (length marks)
