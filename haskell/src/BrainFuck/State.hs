module BrainFuck.State
  where

data State = State Int [Int]
  deriving (Show)

initState :: Int -> Int -> State
initState iPointer iMemorySize = State iPointer iMemory
  where
    iMemory = replicate iMemorySize 0


