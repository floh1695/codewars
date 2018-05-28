module RemoveSmallest where
-- Remove the minimum
-- http://www.codewars.com/kata/remove-the-minimum

import Data.List

removeSmallest :: [Int] -> [Int]
removeSmallest xs = delete (minimum xs) xs