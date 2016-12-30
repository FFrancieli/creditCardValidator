module CreditCardValidator where

toDigits    :: Integer -> [Integer]
toDigits cardNumber
  | cardNumber <= 0 = []
  | otherwise   = map (\digit -> read [digit] :: Integer) (show cardNumber)

toDigitsRev :: Integer -> [Integer]
toDigitsRev cardNumber = reverse (toDigits cardNumber)
