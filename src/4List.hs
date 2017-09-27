import Data.List

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
scanSum (n:s:ns) = n : scanSum ( n + s: ns)
--------------------------------------------------
diffs :: [Integer] -> [Integer]
diffs [] = []
diffs [n] = []
diffs (x:y:ys) = (x-y): diffs(y:ys)

--------------------------------
groupStr ::  [Char] -> [[Char]]
groupStr str = group str

countStr :: [Char] -> (Int, Char)
countStr str = (length str , head str)


cnt str = (length str , head str) 

-- rleEncoder :: [Char] -> [(Int, Char)]
rleEncoder :: String -> [(Int, Char)]
-- rleEncoder str = map countStr (group str)
rleEncoder str = map cnt (group str)
        where
                cnt s = (length s , head s) 

expandRle :: (Int, Char) -> [Char]
expandRle (x, y) = replicate x y

rleDecoder :: [(Int, Char)] -> [Char]
-- rleDecoder l = concat (map expandRle l)
rleDecoder l = concat (map ex l)
        where
                ex (x, y) = replicate x y


getLastEl xs = drop (length xs -1) xs
getLastEl2 xs = xs !! (length xs -1)
getLastEl3 xs = tail xs
getLastEl4 xs = head (reverse xs)

removeLastEl xs = drop 1 (reverse xs)
removeLastEl2 xs = take (length xs -1) xs
removeLastEl3 xs = tail (reverse xs)