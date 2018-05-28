module CodeWars.Kyu8.MakeLowerSpec where

import CodeWars.Kyu8.MakeLower
import Test.Hspec

makeLowerSpec :: IO ()
makeLowerSpec = hspec $ do
  describe "The makeLowerCase function" $ do
    it "should work for some examples" $ do
      makeLowerCase "HELLO" `shouldBe` "hello"
      makeLowerCase "WoRlD" `shouldBe` "world"
