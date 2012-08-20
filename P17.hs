split :: [a] -> Int -> ([a],[a])
split x n	| n >= 0 = ((take n x),(drop n x))

split' :: [a] -> Int -> ([a],[a])
split' [] _ = ([],[])
split' ax@(x:xs) n	| n > 0 = (x:ys,zs)
			| n == 0 = (ax,[])
		where	(ys,zs) = split xs (n-1)
