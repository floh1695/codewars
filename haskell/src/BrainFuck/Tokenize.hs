module BrainFuck.Tokenize
  where

data Token = IncrementPointer 
           | DecrementPointer 
           | Increment 
           | Decrement 
           | Output 
           | Input 
           | StartLoop 
           | EndLoop 
           | NoOperation
           deriving (Show)

tokenFromChar :: Char -> Token
tokenFromChar char = case char of
  '>' -> IncrementPointer
  '<' -> DecrementPointer
  '+' -> Increment
  '-' -> Decrement
  '.' -> Output
  ',' -> Input
  '[' -> StartLoop
  ']' -> EndLoop
  _   -> NoOperation

tokenize :: String -> [Token]
tokenize = mapStringToTokens . filterCharacters
  where
    filterCharacters  = filter (`elem` "><+-.,[]")
    mapStringToTokens = map tokenFromChar
