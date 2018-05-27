module MakeLowerSpec where

import MakeLower
import Test.Hspec

makeLowerSpec :: IO ()
makeLowerSpec = hspec $ do
  describe "The makeLowerCase function" $ do
    it "should work for some examples" $ do
      makeLowerCase "HELLO" `shouldBe` "hello"
      makeLowerCase "WoRlD" `shouldBe` "world"
