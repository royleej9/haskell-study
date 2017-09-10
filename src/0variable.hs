{-
ghci 실행
:load 0variable.hs 또는 :l 0variable.hs
2개의 파일 load시 나중에 읽은 파일의 변수만 사용 가능 / 처음 load한 파일의 변수는 사용 불가 
-} 

-- a, b 보다 먼저 선언을 해도 OK
-- 
c = a + b

a = 2
b = 3


-- 에러 발생
-- 5 = 5 + 1
-- r = r + 1

-- ghci 모드에서는 let 키워드를 사용해야함 (8.0?)
-- let d = 2

-- 에러 발생 값을 재 할당 할수 없음
-- a = 1
