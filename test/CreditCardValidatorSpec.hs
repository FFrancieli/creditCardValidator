import Test.Hspec
import CreditCardValidator

main :: IO ()
main = hspec $ do
  describe "credit card validator" $ do
    it "converts number to digit list" $
      toDigits(1234) `shouldBe` [1, 2, 3, 4]

    it "converts number 0 to empty list" $ do
      toDigits(0) `shouldBe` []

    it "converts negative number to empty list" $ do
      toDigits(-12) `shouldBe` []

    it "reverts number list" $ do
      toDigitsRev(1234) `shouldBe` [4, 3, 2, 1]

    it "doubles every odd index in a even size list" $ do
      doubleEveryOther [8,7,6,5] `shouldBe` [16,7,12,5]

    it "doubles every odd index in a odd size list" $ do
      doubleEveryOther [1, 2, 3] `shouldBe` [1, 4, 3]

    it "sums all digits in a list" $ do
      sumDigits [16,7,12,5] `shouldBe` 22
