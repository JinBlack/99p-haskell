encode :: (Eq a) => [a] -> [(Int,a)]
encode = map (\x -> (length x, head x)) . (foldr pack [])
	where	pack x [] = [[x]]
		pack x (y:z) = if x== (head y) then (x:y):z else [x]:y:z 

