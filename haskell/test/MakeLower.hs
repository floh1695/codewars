module Test.MakeLower where

import MakeLower
import Test.Hspec
import Test.QuickCheck

main :: IO ()    -- This says that main is an IO action.
main = hspec $ do
  describe "The makeLowerCase function" $ do
    it "should work for some examples" $ do
      makeLowerCase "HELLO" `shouldBe` "hello"

