module CodeWars.Kyu8.PowersOfTwoSpec where

import CodeWars.Kyu8.PowersOfTwo
import Test.Hspec

powersOfTwoSpec = hspec $ do
  describe "The powersOfTwo function" $ do
    it "should work for some examples" $ do
      powersOfTwo 0 `shouldBe` [1]
      powersOfTwo 1 `shouldBe` [1,2]
      powersOfTwo 2 `shouldBe` [1,2,4]