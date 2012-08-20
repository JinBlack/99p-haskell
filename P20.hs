removeAt :: Int -> [a] -> (a,[a])
removeAt _ [] = error "Nothing to remove"
removeAt n (x:xs)	| n==1 = (x,xs)
			| n >1 = (k,x:z)
			| otherwise = error "Index Error"
			where (k,z) = (removeAt (n-1) xs)
