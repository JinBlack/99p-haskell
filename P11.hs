data Encoded a = Multiple Int a | Single a deriving Show
encode'' :: (Eq a) => [a] -> [Encoded a]
encode'' = map (\x -> if (length x > 1) then (Multiple (length x) (head x)) else (Single (head x)) ) . (foldr pack [])
	where	pack x [] = [[x]]
		pack x (y:z) = if x== (head y) then (x:y):z else [x]:y:z 

