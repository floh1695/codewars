module CodeWars.Vowel where
-- Vowel Count
-- http://www.codewars.com/kata/vowel-count

getCount :: String -> Int
getCount = length . filter (`elem` "aeiou")