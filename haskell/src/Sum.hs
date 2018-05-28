module Sum where

sum' :: [Int] -> Int
sum' xs
  | null xs     = 0
  | otherwise   = start + end
  where
    start = head xs
    end   = (sum' . tail) xs

-- sum' []     = 0
-- sum' (x:xs) = x + sum' xs