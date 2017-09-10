isTrue = True
isFalse = False

lt = 1 < 2

val = 4 + 9 == 13
val2 = (==) (4 + 9) 13

-- 가드(guard)
-- abs' (-1)
-- 1
-- 함수명 x
--      | 조건(True/False) = 값
--      | otherwise (조건외) = 값
abs' x
    | x < 0     = 0 -x
    | otherwise = x

numOfSolutions a b c
    | disc > 0  = 2
    | disc == 0 = 1
    | otherwise = 0
    where
        disc = b^2 - 4*a*c