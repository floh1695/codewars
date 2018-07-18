module CodeWars.Kyu5.MoleculeToAtoms where

import Data.List
import Text.Regex.Posix

tokenizePattern = intercalate "|" patterns
  where
    patterns = [elementPattern, numberPattern, containerPattern]
      where
        elementPattern = "([A-Z][a-z]*)"
        numberPattern = "(\\d+)"
        containerPattern = intercalate "|" containers
          where
            containers = [param, curly, bracket]
              where
                param   = "(\\(.+\\))"
                curly   = "(\\{.+\\))"
                bracket = "(\\[.+\\})"

parseMolecule :: String -> Either String [(String, Int)]
parseMolecule formula = invalid
  where
    invalid = Left "Not a valid molecule"

