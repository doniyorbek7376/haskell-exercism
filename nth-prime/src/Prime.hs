module Prime (nth) where

nth :: Int -> Maybe Integer
nth n
  | n == 0 = Nothing
  | otherwise = Just res
  where
    allNumbers = [1 ..]
    primes = filter isPrime allNumbers
    res = primes !! (n - 1)

isPrime :: Integer -> Bool
isPrime x
  | x <= 1 = False
  | x == 2 = True
  | otherwise = all (\c -> x `mod` c /= 0) [2 .. sqrt' x]

sqrt' :: (Integral a) => a -> a
sqrt' x = floor (sqrt (fromIntegral x) :: Double)
