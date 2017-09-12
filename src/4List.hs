doubleList :: [Integer] -> [Integer]
doubleList [] = []
doubleList (n:ns) = (2 * n) : doubleList ns

multiplyList :: Integer -> [Integer] -> [Integer]
multiplyList _ [] = []
multiplyList m (n:ns) = (m*n) : multiplyList m ns

doubleList2 :: [Integer] -> [Integer]
doubleList2 = multiplyList 2

applyToIntegers :: (Integer -> Integer) -> [Integer] -> [Integer]
applyToIntegers _ [] = []
applyToIntegers f (n:ns) = (f n) : applyToIntegers f ns

multiplyList2 :: Integer -> [Integer] -> [Integer]
multiplyList2 m = applyToIntegers ((*) m)



multiplyList3 :: Integer -> [Integer] -> [Integer]
multiplyList3 m = map ((*) m)

heads :: [[a]] -> [a]
heads = map head


----------------------
-- takeInt' :: Integer -> [Integer] -> [Integer]
-- takeInt' _ [] = []
-- takeInt' m (n:ns)
--         | m  < 0    = []
--         | otherwise = n : takeInt' (m - 1) ns

takeInt' :: Integer -> [Integer] -> [Integer]
takeInt' _ [] = []
takeInt' m _ | (m <= 0) = []
takeInt' m (n:ns) = n : takeInt' (m - 1) ns


dropInt' :: Integer -> [Integer] -> [Integer]
dropInt' _ [] = []
dropInt' m (n:ns)
        | m <= 0     = (n:ns)
        | otherwise = dropInt' (m - 1) ns

------------------------------------------------
sumInt :: [Integer] -> Integer
sumInt [] = 0
sumInt (n:ns) = n + (sumInt ns)

----------------------------------------------------
-- scanSum :: [Integer] -> [Integer]
-- scanSum (n:[]) = [n]
-- scanSum (n:s:ns) = scanSum ((n + s) : ns)

scanSum :: [Integer] -> [Integer]
scanSum [] = []
scanSum [n] = [n]
scanSum (n:s:ns) = n: scanSum ((n + s) : ns)