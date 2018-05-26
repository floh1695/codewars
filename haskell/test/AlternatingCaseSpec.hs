module AlternatingCaseSpec where

import AlternatingCase
import Test.Hspec

alternatingCaseSpec :: IO ()
alternatingCaseSpec = hspec $ describe "toAlternatingCase" $ do
  it "works for the examples" $ do
    toAlternatingCase "hello world" `shouldBe` "HELLO WORLD"
    toAlternatingCase "HELLO WORLD" `shouldBe` "hello world"
    toAlternatingCase "hello WORLD" `shouldBe` "HELLO world"
    toAlternatingCase "HeLLo WoRLD" `shouldBe` "hEllO wOrld"
    toAlternatingCase "12345"       `shouldBe` "12345"
    toAlternatingCase "1a2b3c4d5e"  `shouldBe` "1A2B3C4D5E"
 
  let xs = ['A'..'Z'] ++ ['a'..'z']

  --it "returns the same string if called twice" $ property $ \(ASCII xs) ->
    --toAlternatingCase (toAlternatingCase xs) `shouldBe` xs
  
  it "returns the same string if called twice" $ do
    toAlternatingCase (toAlternatingCase xs) `shouldBe` xs

  --it "returns a string with the same length" $ property $ \(ASCII xs) ->
    --let l = length xs
    --in toAlternatingCase xs `shouldSatisfy` ((l ==) . length)
  
  it "returns a string with the same length" $ do
    let l = length xs
    toAlternatingCase xs `shouldSatisfy` ((l ==) . length)

