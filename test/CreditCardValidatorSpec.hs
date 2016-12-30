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
