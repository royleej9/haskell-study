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