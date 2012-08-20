rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate x 0 = x
rotate xa@(x:xs) n	|n>0 = rotate (xs++[x]) (n-1)
			|n<0 = rotate xa ((length xa)+n)
