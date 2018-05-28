module CodeWars.Kyu8.DoubleChar where
-- Double Char
-- http://www.codewars.com/kata/double-char

doubleChar :: [Char] -> [Char]
doubleChar = join . double
  where
    join     = foldl (++) ""
    double   = map (\x -> [x, x])