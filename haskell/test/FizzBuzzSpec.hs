module FizzBuzzSpec where

import FizzBuzz

import Test.Hspec

fizzBuzzSpec = hspec $ do
  describe "sum'" $ do
    it "works for some examples" $ do
      fizzBuzz 1  `shouldBe` "1"
      fizzBuzz 2  `shouldBe` "2"
      fizzBuzz 3  `shouldBe` "fizz"
      fizzBuzz 4  `shouldBe` "4"
      fizzBuzz 5  `shouldBe` "buzz"
      fizzBuzz 6  `shouldBe` "fizz"
      fizzBuzz 7  `shouldBe` "7"
      fizzBuzz 8  `shouldBe` "8"
      fizzBuzz 9  `shouldBe` "fizz"
      fizzBuzz 10 `shouldBe` "buzz"
      fizzBuzz 11 `shouldBe` "11"
      fizzBuzz 12 `shouldBe` "fizz"
      fizzBuzz 13 `shouldBe` "13"
      fizzBuzz 14 `shouldBe` "14"
      fizzBuzz 15 `shouldBe` "fizzbuzz"