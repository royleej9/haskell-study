import Data.String

nump :: Num a => a -> a
nump x = x + 1

-- stringp :: [Char] -> [Char]
-- String = [Char] 같은 유형
stringp :: String -> String
stringp x = x ++ "c"