module MakeLowerSpec where

import MakeLower
import Test.Hspec

makeLowerSpec :: IO ()    -- This says that main is an IO action.
makeLowerSpec = hspec $ do
  describe "The makeLowerCase function" $ do
    it "should work for some examples" $ do
      makeLowerCase "HELLO" `shouldBe` "hello"
      makeLowerCase "WoRlD" `shouldBe` "world"
