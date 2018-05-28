module PowersOfTwo where
-- Powers of 2
-- https://www.codewars.com/kata/powers-of-2

powersOfTwo :: Int -> [Int]
powersOfTwo n
  | n == 0         = singleton
  | otherwise      = powersOfTwo' ++ singleton
  where
    powersOfTwo'   = powersOfTwo (n - 1)
    n'             = 2.0 ** (fromIntegral n)
    singleton      = [floor n']