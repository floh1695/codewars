module FizzBuzz where

fizzBuzz :: Integer -> String
fizzBuzz n
  | isDivisibleBy 15  = "fizzbuzz"
  | isDivisibleBy  5  = "buzz"
  | isDivisibleBy  3  = "fizz"
  | otherwise         = show n
  where
    isDivisibleBy     = isZero . mod'
      where
        isZero        = (== 0)
        mod'          = (n `mod`)

fizzbuzz :: Int -> [Int]
fizzbuzz n                    = solve
  where
    mapFizzBuzz               = map fizzBuzz initialArray
      where
        initialArray          = [1..((fromIntegral n) - 1)]
    filterFizzBuzz            = filter predicate
      where
        predicate             = (`elem` ["fizzbuzz", "buzz", "fizz"])
    solve                     = [count "fizz", count "buzz", count "fizzbuzz"]
      where
        count                 = (`countOfElem` (filterFizzBuzz mapFizzBuzz))
          where
            countOfElem elem  = length . filter (==elem)