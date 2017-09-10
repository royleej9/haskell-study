
-- 함수명 매개변수 = 내용
sumFun a b = a + b

-- sumFun 1 2
-- 3
-- sumFun 1 2 * 3
-- 함수 계산이 우선 순위가 더 높음
-- (sumFun 1 2) * 3
-- 9

-- haskell에서 모든 함수는 1인함수로 실행이 됨
-- https://en.wikipedia.org/wiki/Currying
-- https://ko.wikipedia.org/wiki/%EC%BB%A4%EB%A7%81
-- let r = sumFun 1
-- r 2
-- 3

a = 10
sum10 x = x + a

double x = 2 * x


-- double 함수에 double과 x를 인자를 넘기는 의미가 됨
-- ()를 하지 않을 경우 에러 발생
--quadruple x = double double x
quadruple x = double (double x)

-- :t areaRect
areaRect :: Num a => a -> a -> a
areaRect l w = l * w

-- :t areaSquare
areaSquare :: Num a => a -> a
areaSquare s = areaRect s s

heron a b c = result
    where
    s = (a+b+c) / 2
    result = sqrt (s*(s-a)*(s-b)*(s-c))



-- abs 2
-- abs (-2)
abs x
    | x < 0     = -x
    | otherwise = x


numOfSolutions a b c 
    | disc > 0  = 2
    | disc == 0 = 1
    | otherwise = 0
        where
        disc = b^2 - 4*a*c


-- xor :: Bool -> Bool -> Bool
xor p q = (p || q) && not (p && q)

-- test :: Num a => a -> a -> a
test :: Int -> Char -> Int
test a b =  a + ord b

abs 2