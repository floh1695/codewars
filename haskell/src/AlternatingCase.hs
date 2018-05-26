module AlternatingCase where
-- altERnaTIng cAsE <=> ALTerNAtiNG CaSe
-- https://www.codewars.com/kata/alternating-case-%3C-equals-%3E-alternating-case

import Data.Char

alternateCase ch
    | charIn lowercase = toUpper ch
    | charIn uppercase = toLower ch
    | otherwise        = ch
    where
        charIn = elem ch
        lowercase = ['a'..'z']
        uppercase = ['A'..'Z']

toAlternatingCase :: String -> String
toAlternatingCase = map alternateCase

