myLength :: [a] -> Int
myLength [] = 0
myLength (_:x) = 1+myLength x

