sum' :: [Integer] -> Integer
sum' [] = 0
sum' (x:xs) = x + sum xs

product' :: [Integer] -> Integer
product' [] = 1
product' (x:xs) = x * product xs

-- 인자가 2개인 함수 , 값 , 리스트
-- 오른쪽에서 왼쪽으로 계산
-- foldr' (+) 2 [1,2,3]
-- -> 1 + (2 + (3 + 2)) 
-- foldr' (/) 3 [1,2,12]
-- -> 1 / (2 / (12 /3))
foldr' :: (a -> b ->b) ->b ->[a] ->b
foldr' f acc [] = acc
foldr' f acc (x:xs) = f x (foldr' f acc xs)

-- foldl' (+) 2 [1,2,3]
-- ((1 + 2) + 2) + 3
-- foldl' (/) 3 [1,2,12]
-- ->  ((3 / 1) / 2) / 12
foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f acc [] = acc
foldl' f acc (x:xs) = foldl' f (f acc x) xs

-- 입력 두 값의 타입이 서로 다르다
-- 리스트의 원소와 결과 값이 다른 타입이 가능
-- foldr  :: (a -> b -> b) -> b -> [a] -> b

-- 입력 값이 결과 값과 같은 타입
-- foldr1 :: (a -> a -> a) ->      [a] -> a

foldr1' :: (a -> a ->a) -> [a] -> a
foldr1' f [x] = x
foldr1' f (x:xs) = f x (foldr1' f xs)
foldr1' _ [] = error "Prelude.foldr1: empty list"

foldl1' :: (a -> a -> a) -> [a] -> a
foldl1' f (x:xs) = foldl f x xs
foldl1' _ [] = error "Prelude.fildl1: empty list"


and' :: [Bool] -> Bool
-- and' [] = True
-- and' (x:xs) = x && (and' xs)

and' x = foldl (&&) True x

or' :: [Bool] -> Bool
-- or' [] = False
-- or' (x:xs) = x || (or' xs)
or' x = foldl (||) False x