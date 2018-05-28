module SumSpec where

import Sum

import Test.Hspec

sumSpec = hspec $ do
  describe "sum'" $ do
    it "works for some examples" $ do
      sum' []     `shouldBe` 0
      sum' [1]    `shouldBe` 1
      sum' [0..5] `shouldBe` sum [0..5]