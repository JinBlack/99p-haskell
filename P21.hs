insertAt :: a -> [a] -> Int -> [a]
insertAt x ys 1 = x:ys
insertAt x (y:ys) n	| n>1 = y:(insertAt x ys (n-1))
			| otherwise = error "Index Error!"
insertAt x [] _ = [x]
