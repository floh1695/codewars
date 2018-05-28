module LitresSpec where

import Litres
import Test.Hspec
-- import Test.Hspec.QuickCheck

litresSpec = hspec $ do
  describe "Testing solution:" $ do
    it "Should work for description" $ do
      litres 3 `shouldBe` 1
      litres 6.7 `shouldBe` 3
      litres 11.8 `shouldBe` 5