module CreditCardValidator where

toDigits    :: Integer -> [Integer]
toDigits cardNumber
  | cardNumber <= 0 = []
  | otherwise   = map (\digit -> read [digit] :: Integer) (show cardNumber)

toDigitsRev :: Integer -> [Integer]
toDigitsRev cardNumber = reverse (toDigits cardNumber)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther numbers
  | length numbers `mod` 2 == 0 = doubleOdd(numbers)
  | otherwise = doubleEven(numbers)

doubleOdd :: [Integer] -> [Integer]
doubleOdd [] = []
doubleOdd (x:[]) = [x]
doubleOdd (x:(y:zs)) = (x * 2) : y : doubleOdd zs

doubleEven :: [Integer] -> [Integer]
doubleEven [] = []
doubleEven (x:[]) = [x]
doubleEven (x:(y:zs)) = x : (y * 2) : doubleEven zs
