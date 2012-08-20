encode :: (Eq a) => [a] -> [(Int,a)]
encode x = map (\x -> (length x, head x)) (foldr pack [] x)
	where	pack x [] = [[x]]
		pack x (y:z) = if x== (head y) then (x:y):z else [x]:y:z 

