module Searching.BinarySearchSpec (spec) where

import           Searching.BinarySearch (binarySearch)
import           Test.Hspec

spec :: Spec
spec = do
  describe "binary search" $ do
    it "finds Int in Int list" $ binarySearch [1,2,3,4,5,6] 2 `shouldBe` True
    it "finds elemend if it is at the start" $ binarySearch [1,2,3,4,5,6] 1 `shouldBe` True
    it "finds elemend if it is at the end" $ binarySearch [1,2,3,4,5,6] 6 `shouldBe` True
    it "doesn't find element if it's not in list" $ binarySearch [1,2,3,4,5,6] 7 `shouldBe` False
