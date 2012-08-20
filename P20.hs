removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt 0 x = x
removeAt n (x:xs)	| n==1 = xs
			| otherwise = x:(removeAt (n-1) xs)
