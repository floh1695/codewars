module AlternatingCase where

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

