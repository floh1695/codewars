module CodeWars.Kyu8.PowersOfTwo where
-- Powers of 2
-- https://www.codewars.com/kata/powers-of-2

-- First solution
-- powersOfTwo :: Int -> [Int]
-- powersOfTwo n
--   | n == 0         = singleton
--   | otherwise      = powersOfTwo' ++ singleton
--   where
--     powersOfTwo'   = powersOfTwo (n - 1)
--     n'             = 2.0 ** (fromIntegral n)
--     singleton      = [floor n']

-- Using list comprehension
-- powersOfTwo :: Int -> [Int]
-- powersOfTwo n = [ 2^x | x <- [0 .. n] ]

-- Second solution
powersOfTwo :: Int -> [Int]
powersOfTwo n = map (2 ^) [0..n]