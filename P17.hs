split :: [a] -> Int -> [[a]]
split x n	| n >= 0 =(take n x):[(drop n x)]
		| n < 0 = split x ((length x)+n)
