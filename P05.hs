myReverse :: [a]->[a]
myReverse [] = []
myReverse (x:y) = myReverse y ++ [x]
