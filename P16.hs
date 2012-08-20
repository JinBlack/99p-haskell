dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery x n = dropEvery' x n n
dropEvery' :: [a] ->Int -> Int -> [a]
dropEvery' [] _ _ = []
dropEvery' (x:y) 1 r = dropEvery' y r r
dropEvery' (x:y) e r = x:dropEvery' y (e-1) r
		 

