module BrainFuck.Interpret
  where

interpret :: [Char] -> [Char]
interpret tape = tape

initState :: Int -> Int -> State
initState iPointer iMemorySize = State iPointer iMemory
  where
    iMemory = replicate iMemorySize 0

data State = State Int [Int]
  deriving (Show)
